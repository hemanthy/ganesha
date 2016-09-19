var brandArr = new Array();
var screenTypeArr = new Array();
var ScreenSizeArr = new Array();
var resolutionArr = new Array();
var AvailabilityArr = new Array();
var NoSimArr = new Array();
var PrimaryCameraArr = new Array();
var SecondaryCameraArr = new Array();
var RAMArr = new Array();
var InternalROMArr = new Array();
var ExternalROMArr = new Array();
var urlArr = Array();
var seo_search = 'advance-search';
var seo_path = '/mobiles';

function addAttr(type, val){
    switch(type){
        case 'brand':
                        addBrandChecked(val);
        break;
        case 'primary-camera':
                        addPrimaryCameraFeature(val);
        break;
        case 'secondary-camera':
                        addSecondaryCameraFeature(val);
        break;
                case 'ram':
                        addRAMFeature(val);
        break;
                case 'screen-size':
                        addScreenSizeFeature(val);
        break;
                case 'sim':
                        addNoofSimFeature(val);
        break;
                case 'availability':
                        addAvailabilityFeature(val);
                break;
                case 'internal-memory':
                        addInternalMemoryFeature(val);
                break;
                case 'external-memory':
                        addExternalMemoryFeature(val);
        break;
        }
}

function removeAttr(type, val){
           switch(type){
        case 'brand':
                removeBrandChecked(val);
        break;
        case 'primary-camera':
                        removePrimaryCameraFeature(val);
        break;
        case 'secondary-camera':
                        removeSecondaryCameraFeature(val);
        break;
                case 'ram':
                        removeRAMFeature(val);
        break;
                case 'screen-size':
                        removeScreenSizeFeature(val);
        break;
                case 'sim':
                        removeNoofSimFeature(val);
        break;
                case 'availability':
                        removeAvailabilityFeature(val);
        break;
                case 'internal-memory':
                        removeInternalMemoryFeature(val);
                break;
                case 'external-memory':
                        removeExternalMemoryFeature(val);
        break;
        }
}


function loadingSelectedInput(){
$('#advancesearch-from input:checked').each(function() {
    var val = $(this).attr('value');
    var type = $(this).parent().parent().parent().attr('id');
        var isChecked = $(this).is(':checked');
        if(isChecked){
                        addAttr(type, val);
        }else{
                  removeAttr(type, val);
        }

});
}

function onClikUnSelectedInput(){
$('#advancesearch-from input[type=checkbox]').on("click",function() {
 var val = $(this).attr('value');
        var isChecked = $(this).is(':checked');
    var t = $(this).parent().parent().parent().attr('id');
        if(isChecked){
                addAttr(t, val);
        }else{
                removeAttr(t, val);
        }
        var queryStr =  submitUrl(urlArr);
        window.location.href = queryStr;
});
}

function submitUrl(urlArr){
                
        var newurlArr = Array();
        
        for(var key in urlArr) {
                newurlArr.push(key+'-'+urlArr[key]);
        }

  var queryStr = "http://localhost:8080"+seo_path+'/'+seo_search;
  if(newurlArr !=''){
          var queryStr = queryStr+'/'+newurlArr.join('/');
  }
  console.log(queryStr);
  
        return queryStr;
}

$('document').ready(function(){
        loadingSelectedInput();
        onClikUnSelectedInput();
});

function addBrandChecked(newElement,brand_id){
        
        if(newElement){

    if(brandArr.indexOf(newElement) > -1){
      return false;
    }
                  brandArr.push(newElement);
                  var brandStr = brandArr.join('_');
                  
                  urlArr['brand'] = brandStr;
                  
        }
//      submitUrl(urlArr);
        return false;
}


function removeBrandChecked(searchElement,brand_id,submiturl){
        var len = brandArr.length;
        var brandStr;
        for(i=0;i<len;i++){
                if(brandArr[i] == searchElement){
                        brandArr.splice(i,1);
                }
        }

        if(brandArr.length > 0){
                brandStr = brandArr.join('_');
                urlArr['brand'] = brandStr;
        }else{
                delete urlArr['brand'];
        }
        if(submiturl){
                var queryStr = submitUrl(urlArr);
                setTimeout(function(){location.href = queryStr;},0);
        }
        return true;
}


function removeAvailabilityFeature(searchElement){
        var len = AvailabilityArr.length;
        var AvailabilityStr;
        for(i=0;i<len;i++){
                if(AvailabilityArr[i] == searchElement){
                        AvailabilityArr.splice(i,1);
                }
        }       
        if(AvailabilityArr.length > 0){
                AvailabilityStr = AvailabilityArr.join('_');
                urlArr['availability'] = AvailabilityStr;
        }else{
                delete urlArr['availability'];
        }
        return false;
}

function removeInternalMemoryFeature(searchElement){
        var len = InternalROMArr.length;
        var AvailabilityStr;
        for(i=0;i<len;i++){
                if(InternalROMArr[i] == searchElement){
                        InternalROMArr.splice(i,1);
                }
        }       
        if(InternalROMArr.length > 0){
                urlArr['internal-memory'] = InternalROMArr.join('_');
        }else{
                delete urlArr['internal-memory'];
        }
        return false;
}


function removeExternalMemoryFeature(searchElement){
        var len = ExternalROMArr.length;
        var AvailabilityStr;
        for(i=0;i<len;i++){
                if(ExternalROMArr[i] == searchElement){
                        ExternalROMArr.splice(i,1);
                }
        }       
        if(ExternalROMArr.length > 0){
                urlArr['external-memory'] = ExternalROMArr.join('_');
        }else{
                delete urlArr['external-memory'];
        }
        return false;
}


function addRAMFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(RAMArr.indexOf(feature_name) > -1){
      return false;
    }
                RAMArr.push(feature_name);      
                var RAMStr = RAMArr.join('_');
                urlArr['ram'] = RAMStr;
        }
        return false;
}
function removeRAMFeature(searchElement){
        var len = RAMArr.length;
        var RAMStr;
        for(i=0;i<len;i++){
                if(RAMArr[i] == searchElement){
                        RAMArr.splice(i,1);
                }
        }       
        if(RAMArr.length > 0){
                RAMStr = RAMArr.join('_');
                urlArr['ram'] = RAMStr;
        }else{
                delete urlArr['ram'];
        }
        return false;
}

function addFeaturesFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(FeaturesArr.indexOf(feature_name) > -1){
      return false;
    }
                FeaturesArr.push(feature_name); 
                var FeaturesStr = FeaturesArr.join('_');
                urlArr['features'] = FeaturesStr;
        }
        return false;
}
function removeFeaturesFeature(searchElement){
        var len = FeaturesArr.length;
        var FeaturesStr;
        for(i=0;i<len;i++){
                if(FeaturesArr[i] == searchElement){
                        FeaturesArr.splice(i,1);
                }
        }       
        if(FeaturesArr.length > 0){
                FeaturesStr = FeaturesArr.join('_');
                urlArr['features'] = FeaturesStr;
        }else{
                delete urlArr['features'];
        }
        return false;
}

function addNoofSimFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(NoSimArr.indexOf(feature_name) > -1){
      return false;
    }
                NoSimArr.push(feature_name);    
                var NoSimStr = NoSimArr.join('_');
                urlArr['sim'] = NoSimStr;
        }
        return false;
}

function addAvailabilityFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(AvailabilityArr.indexOf(feature_name) > -1){
      return false;
    }
    AvailabilityArr.push(feature_name); 
                var AvailabilityStr = AvailabilityArr.join('_');
                urlArr['availability'] = AvailabilityStr;
        }
        return false;
}

function addInternalMemoryFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(InternalROMArr.indexOf(feature_name) > -1){
      return false;
    }
    InternalROMArr.push(feature_name);  
                urlArr['internal-memory'] = InternalROMArr.join('_');
        }
        return false;
}

function addExternalMemoryFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(ExternalROMArr.indexOf(feature_name) > -1){
      return false;
    }
    ExternalROMArr.push(feature_name);  
                urlArr['external-memory'] = ExternalROMArr.join('_');
        }
        return false;
}

function removeNoofSimFeature(searchElement){
        var len = NoSimArr.length;
        var NoSimStr;
        for(i=0;i<len;i++){
                if(NoSimArr[i] == searchElement){
                        NoSimArr.splice(i,1);
                }
        }       
        if(NoSimArr.length > 0){
                NoSimStr = NoSimArr.join('_');
                urlArr['sim'] = NoSimStr;
        }else{
                delete urlArr['sim'];
        }
        return false;
}

function addPrimaryCameraFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(PrimaryCameraArr.indexOf(feature_name) > -1){
      return false;
    }
                PrimaryCameraArr.push(feature_name);    
                var PrimaryCameraStr = PrimaryCameraArr.join('_');
                urlArr['primary-camera'] = PrimaryCameraStr;
        }
        return false;
}

function addSecondaryCameraFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(SecondaryCameraArr.indexOf(feature_name) > -1){
      return false;
    }
     SecondaryCameraArr.push(feature_name);     
                var seondaryCameraStr = SecondaryCameraArr.join('_');
                urlArr['secondary-camera'] = seondaryCameraStr;
        }
        return false;
}

function removeSecondaryCameraFeature(searchElement){
        var len = SecondaryCameraArr.length;
        var secondaryCameraStr;
        for(i=0;i<len;i++){
                if(SecondaryCameraArr[i] == searchElement){
                        SecondaryCameraArr.splice(i,1);
                }
        }       
        if(SecondaryCameraArr.length > 0){
                secondaryCameraStr = SecondaryCameraArr.join('_');
                urlArr['secondary-camera'] = secondaryCameraStr;
        }else{
                delete urlArr['secondary-camera'];
        }
        return false;
}


function removePrimaryCameraFeature(searchElement){
        var len = PrimaryCameraArr.length;
        var PrimaryCameraStr;
        for(i=0;i<len;i++){
                if(PrimaryCameraArr[i] == searchElement){
                        PrimaryCameraArr.splice(i,1);
                }
        }       
        if(PrimaryCameraArr.length > 0){
                PrimaryCameraStr = PrimaryCameraArr.join('_');
                urlArr['primary-camera'] = PrimaryCameraStr;
        }else{
                delete urlArr['primary-camera'];
        }
        return false;
}

function addScreenSizeFeature(feature_name){
        //alert(feature_name);
        if(feature_name){
    if(ScreenSizeArr.indexOf(feature_name) > -1){
      return false;
    }
                ScreenSizeArr.push(feature_name);       
                var ScreenSizeStr = ScreenSizeArr.join('_');
                urlArr['screen-size'] = ScreenSizeStr;
        }
        return false;
}
function removeScreenSizeFeature(searchElement){
        var len = ScreenSizeArr.length;
        var ScreenSizeStr;
        for(i=0;i<len;i++){
                if(ScreenSizeArr[i] == searchElement){
                        ScreenSizeArr.splice(i,1);
                }
        }
        if(ScreenSizeArr.length > 0){
                ScreenSizeStr = ScreenSizeArr.join('_');
                urlArr['screen-size'] = ScreenSizeStr;
        }else{
                delete urlArr['screen-size'];
        }
        return false;
}
 