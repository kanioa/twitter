var articleApp = angular.module('articleApp', []);
articleApp.controller('articleController', function ($scope, $http) {
        $scope.init = function () {
            $http({
                method: 'GET',
                url: 'rest/articles/',
                params: {}
            }).then(
                function (response) {
                    $scope.articles = response.data;
                }
            );
        };
    }
);