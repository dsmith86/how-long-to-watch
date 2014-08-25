'use strict';

/* Directives */


angular.module('myApp.directives', []).
  directive('appVersion', ['version', function(version) {
    return function(scope, elm, attrs) {
      elm.text(version);
    };
  }]).

  directive('watchlist', function() {
  	return {
  		restrict: 'E',
  		replace: true,
  		transclude: true,
  		templateUrl: 'app/partials/watchlist.html'
  	}
  });
