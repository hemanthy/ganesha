package com.ezone.dao;

/***
 * The abstract class to parse the data.
 * Please refer to the instructions.txt
 *
 * @author vijay.v@flipkart.com
 * @version 1.0
 * Copyright (c) Flipkart India Pvt. Ltd.
 */

import java.util.Map;
import java.util.List;
import java.net.*;
import java.io.*;

abstract class DataParser {

    /***
     * queries the URL and gets back the response as string.
     * @param urlString
     * @return
     * @throws AffiliateAPIException, with different error codes explained.
     */
    public String queryService(String urlString) throws AffiliateAPIException {
         System.out.println("urlString::"+urlString);
        try {
            URL url = new URL(urlString);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Fk-Affiliate-Token", getAffiliateToken());
            con.setRequestProperty("Fk-Affiliate-Id", getAffiliateId());
            con.setConnectTimeout(200000);

            int status = con.getResponseCode();
            
            System.out.println("status::"+status);

            switch(status) {

                case HttpURLConnection.HTTP_GONE:
                    // The timestamp is expired.
                    throw new AffiliateAPIException("URL expired");

                case HttpURLConnection.HTTP_UNAUTHORIZED:
                    // The API Token or the Tracking ID is invalid.
                    throw new AffiliateAPIException("API Token or Affiliate Tracking ID invalid.");

                case HttpURLConnection.HTTP_FORBIDDEN:
                    // Tampered URL, i.e., there is a signature mismatch.
                    // The URL contents are modified from the originally returned value.
                    throw new AffiliateAPIException("Tampered URL - The URL contents are modified from the originally returned value");

                case HttpURLConnection.HTTP_OK:

                    BufferedReader in = new BufferedReader(
                            new InputStreamReader(con.getInputStream()));
                    String inputLine;
                    StringBuffer response = new StringBuffer();

                    while ((inputLine = in.readLine()) != null) {
                        response.append(inputLine);
                    }
                    in.close();
                   // System.out.println(response.toString());
                    String responseJsonData = response.toString();
                    if(responseJsonData==null || responseJsonData.trim().isEmpty()){
                        throw new AffiliateAPIException("ResponseJsonData Cannot Be Null or Empty");
                    }
                    return responseJsonData.replace("v0.1.0", "v_0_1_0");

                default:
                    throw new AffiliateAPIException("Connection error with the Affiliate API service: HTTP/" + status);
            }
        }
        catch(MalformedURLException mfe) {
        }
        catch(IOException ioe) {
        }

        return "";
    }

    /***
     *  It gets the API Directory information (A list of categories and the corresponding URLs) from the API service
     *  and stores it locally.
     * @return true if initialization is successful.
     * @throws AffiliateAPIException
     */
    abstract boolean initializeProductDirectory() throws AffiliateAPIException;

    /***
     *
     * @return the locally stored product directory information (A list of categories and the corresponding URLs).
     * Originally updated using initializeProductDirectory() and it should be updated again if the URLs are expired.
     */
    abstract Map<String, String> getProductDirectory();

    // Affiliate related information.
    abstract String getAffiliateId();
    abstract String getAffiliateToken();
}