
public with sharing class HttpCalloutController {
    @AuraEnabled(cacheable=true)
    public static String makeHttpCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String responseBody = response.getBody();
        System.debug(responseBody);
        return responseBody;
    }
}