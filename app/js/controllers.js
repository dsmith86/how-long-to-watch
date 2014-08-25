'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
  .controller('watchlistController', ['$scope', 'Watchlist', function($scope, Watchlist) {

  	$scope.searchClicked = function(username) {
  		Watchlist.get({ id: username }, function(data) {
  		$scope.watchlist = data;
  	});
  	};

    $scope.formattedDuration = function(show) {
      var totalMinutes = show.episode_duration * show.episode_count;
      var hours = Math.floor(totalMinutes / 60);
      var minutes = totalMinutes % 60;
      var hourDescription = (hours === 1) ? "hour" : "hours";
      var minuteDescription = (minutes === 1) ? "minute" : "minutes";

      if (minutes === 0) {
        return hours + " " + hourDescription;
      }
      if (minutes === 0) {
        return minutes + " " + minuteDescription;
      }

      return hours + " " + hourDescription + " " + minutes + " " + minuteDescription;
    };

  }])
  .controller('MyCtrl2', ['$scope', function($scope) {

  }]);
