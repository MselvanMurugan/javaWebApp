'use strict';

var App = angular.module('myApp',['googleplus'])
 
 App.config(['GooglePlusProvider', function(GooglePlusProvider) {
         GooglePlusProvider.init({
           clientId: '1049682863258-bglel6f00soubngeftmq3b1k6q8au2ou.apps.googleusercontent.com',
           apiKey: 'AUzAAE1NWqXF1gljf_lhZP4Z'
         });
    }]);




