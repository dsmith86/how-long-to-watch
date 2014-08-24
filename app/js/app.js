'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', [
  'ngRoute',
  'myApp.filters',
  'myApp.services',
  'myApp.directives',
  'myApp.controllers',
  'ngResource'
]).
config(['$routeProvider', function($routeProvider) {
	//delete $httpProvider.defaults.headers.common['X-Requested-With'];

	$routeProvider.when('/', {
		templateUrl: 'app/partials/home.html',
		controller: 'watchlistController'
	});
	$routeProvider.when('/404', {
		templateUrl: 'app/partials/404.html',
		controller: '404Controller'
	});
	$routeProvider.otherwise({
		redirectTo: '/404'
	});
}]);
