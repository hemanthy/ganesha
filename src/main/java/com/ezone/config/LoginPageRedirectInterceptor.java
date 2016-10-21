package com.ezone.config;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.UrlPathHelper;

@Configuration
public class LoginPageRedirectInterceptor extends HandlerInterceptorAdapter {    

    private String[] loginPagePrefixes = new String[] { "/login" };

    private String redirectUrl = "/electronics";

    private UrlPathHelper urlPathHelper = new UrlPathHelper();
    
    private Long preExecutionTime = null;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {
    	preExecutionTime = Calendar.getInstance().getTimeInMillis();
        if (isInLoginPaths(this.urlPathHelper.getLookupPathForRequest(request))
                           && isAuthenticated()) {
            response.setContentType("text/plain");
            sendRedirect(request, response);
            return false;
        } else {
            return true;
        }
    }
    
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
    		ModelAndView modelAndView) throws Exception {
    	Long postExectionTime = Calendar.getInstance().getTimeInMillis();
    	Long executionTime = postExectionTime - preExecutionTime;
    	modelAndView.addObject("time", executionTime);
    	super.postHandle(request, response, handler, modelAndView);
    }
    
    private boolean isAuthenticated() {
        Authentication authentication =
                        SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null) {
            return false;
        }
        if (authentication instanceof AnonymousAuthenticationToken) {
            return false;
        }
        return authentication.isAuthenticated();
    }

    private void sendRedirect(HttpServletRequest request,
                              HttpServletResponse response) {

        String encodedRedirectURL = response.encodeRedirectURL(
                                 request.getContextPath() + this.redirectUrl);
        response.setStatus(307);
        response.setHeader("Location", encodedRedirectURL);
    }

    private boolean isInLoginPaths(final String requestUrl) {   
        for (String login : this.loginPagePrefixes) {
            if (requestUrl.startsWith(login)) {
                return true;
            }
        }
        return false;
    }
}