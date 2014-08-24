'use strict';

/* Services */


// Demonstrate how to register services
// In this case it is a simple value service.
angular.module('myApp.services', []).
  value('version', '0.1').

factory('Watchlist', function($resource) {
	return $resource("http://how-long-to-watch.herokuapp.com/users/:id/watchlist/shows", {}, {
		get: { method: "GET", isArray: true }
	});
});
