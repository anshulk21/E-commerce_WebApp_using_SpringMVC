


var cartApp=angular.module("cartApp", []);

  cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
        $http.get("/newExercise/rest/cart/" + $scope.cartId).success(function (data){
            $scope.cart = data;
        });
    };

    $scope.clearCart = function(){
        $http.delete("/newExercise/rest/cart/" + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
        $http.put("/newExercise/rest/cart/add/" + productId).success(function (){
            $scope.refreshCart();
            alert('Product successfully added to the cart!');
        });
    };

      $scope.addPlusToCart = function(productId){
          $http.put("/newExercise/rest/cart/add/" + productId).success(function (){
              $scope.refreshCart();
          });
      };

    $scope.removeFromCart = function(productId){
        $http.put("/newExercise/rest/cart/remove/" + productId).success(function (data){
            $scope.refreshCart();
            alert('Product successfully removed from the cart!');
        });
    };

    $scope.calGrandTotal = function(){
        var grandTotal = 0;

        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }

});