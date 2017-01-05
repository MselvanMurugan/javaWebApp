'use strict';

angular.module('myApp').controller('GplusController', ['$scope' ,'$window','$auth', function($scope,$window,$auth) {

	$scope.authenticate = function(provider) {
        $auth.authenticate(provider).then(function(response) {
        	console.log(provider)
            // Signed in with Google.
          })
          .catch(function(response) {
            // Something went wrong.
          });
      };
      
   // Google
      $authProvider.google({
        url: '/auth/google',
        authorizationEndpoint: 'https://accounts.google.com/o/oauth2/auth',
        redirectUri: window.location.origin,
        requiredUrlParams: ['scope'],
        optionalUrlParams: ['display'],
        scope: ['profile', 'email'],
        scopePrefix: 'openid',
        scopeDelimiter: ' ',
        display: 'popup',
        oauthType: '2.0',
        popupOptions: { width: 452, height: 633 }
      });
      
}]);
