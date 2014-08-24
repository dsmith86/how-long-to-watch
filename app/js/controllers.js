'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
  .controller('watchlistController', ['$scope', 'Watchlist', function($scope, Watchlist) {
  	Watchlist.query(function(data) {
  		$scope.watchlist = data;

  		console.log(data);
  	});

  	$scope.tempData = [
	  {
	    "id": "archer-2009",
	    "episode_duration": 20,
	    "episode_count": 65,
	    "image_uri": "http:\/\/slurm.trakt.us\/images\/posters\/57.12.jpg",
	    "expiration_date": "2014-08-31 18:28:49 +0000"
	  },
	  {
	    "id": "doctor-who-2005",
	    "episode_duration": 60,
	    "episode_count": 229,
	    "image_uri": "http:\/\/slurm.trakt.us\/images\/posters\/198.60.jpg",
	    "expiration_date": "2014-08-31 18:28:50 +0000"
	  },
	  {
	    "id": "falling-skies",
	    "episode_duration": 60,
	    "episode_count": 45,
	    "image_uri": "http:\/\/slurm.trakt.us\/images\/posters\/6164.6.jpg",
	    "expiration_date": "2014-08-31 18:28:51 +0000"
	  },
	  {
	    "id": "fullmetal-alchemist-brotherhood",
	    "episode_duration": 25,
	    "episode_count": 69,
	    "image_uri": "http:\/\/slurm.trakt.us\/images\/posters\/972.19.jpg",
	    "expiration_date": "2014-08-31 18:28:52 +0000"
	  },
	  {
	    "id": "game-of-thrones",
	    "episode_duration": 60,
	    "episode_count": 50,
	    "image_uri": "http:\/\/slurm.trakt.us\/images\/posters\/1395.80.jpg",
	    "expiration_date": "2014-08-31 18:28:53 +0000"
	  }
	];

  }])
  .controller('MyCtrl2', ['$scope', function($scope) {

  }]);
