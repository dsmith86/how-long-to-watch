'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
  .controller('watchlistController', ['$scope', 'Watchlist', function($scope, Watchlist) {

  	$scope.username = "";

  	$scope.searchClicked = function(username) {
  		Watchlist.query(function(data) {
  		$scope.watchlist = data;

  		console.log(data);
  	});
  	};

  }])
  .controller('MyCtrl2', ['$scope', function($scope) {

  }]);
