//JS
import { LightningElement } from 'lwc';
import makeHttpCallout from '@salesforce/apex/HttpCalloutController.makeHttpCallout';

export default class HttpCalloutExample extends LightningElement {
    makeHttpCallout() {
        makeHttpCallout()
            .then(result => {
                console.log(result);
            })
            .catch(error => {
                console.error(error);
            });
    }
}