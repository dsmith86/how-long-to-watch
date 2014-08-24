'use strict';

/* Services */


// Demonstrate how to register services
// In this case it is a simple value service.
angular.module('myApp.services', []).
  value('version', '0.1').

factory('Watchlist', function($resource) {
	return $resource("http://localhost:9292/users/danielsmith4483/watchlist/shows");
});
