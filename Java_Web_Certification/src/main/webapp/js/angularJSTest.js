/**
 * 
 */

var db = angular.module("mainApp",[]);
	db.controller('appCtrl', function($scope) {
		$scope.name="rocky,tuli,tanim";
		$scope.splitArray = $scope.name.split(",");
	});