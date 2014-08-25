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
      var totalMinutes = show.total_duration;
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

    $scope.showUrl = function(show) {
      return "http://trakt.tv/show/" + show.id;
    };

    $scope.predicate = 'total_duration';
    $scope.reverse = false;

  }])
  .controller('MyCtrl2', ['$scope', function($scope) {

  }]);
