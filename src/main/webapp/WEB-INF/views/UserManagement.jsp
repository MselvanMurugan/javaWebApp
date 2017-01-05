<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<title>AngularJS $http Example</title>
<link href="<c:url value='/static/css/bootstrap.min.css'/>"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css'/>" rel="stylesheet"></link>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<link href="<c:url value='/static/css/styles.css'/>" rel="stylesheet"></link>
</head>
<body ng-app="myApp" class="ng-cloak">
	<div ng-controller="UserController as ctrl">

		<div id="loginModal" class="modal show" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h1 class="text-center">Login</h1>
					</div>
					<div class="modal-body">
						<form class="form col-md-12 center-block"
							ng-submit="ctrl.submit()" name="myForm">
							<div class="form-group">
								<input type="text" class="form-control input-lg"
									placeholder="Email" ng-model="ctrl.user.email" name="email">
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.email.$error.required">This is a
										required field</span> <span ng-show="myForm.email.$invalid">This
										field is invalid </span>
								</div>
							</div>
							<div class="form-group">
								<input type="password" class="form-control input-lg"
									placeholder="Password" ng-model="ctrl.user.password"
									name="password">
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-lg btn-block" type="submit"
									ng-disabled="myForm.$invalid">Sign In</button>
								<span class="pull-right"><a href="#">Register</a></span><span><a
									href="#">Need help?</a></span>
							</div>
						</form>
						<form action="signin/google" method="POST">
				    <button type="submit" class="btn btn-large btn-primary">Sign in with Google</button>
				    <input type="hidden" name="scope" value="email https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/tasks https://www.googleapis.com/auth/drive https://www.googleapis.com/auth/latitude.all.best" />
				    <input type="hidden" name="request_visible_actions" value="http://schemas.google.com/AddActivity http://schemas.google.com/BuyActivity http://schemas.google.com/CheckInActivity http://schemas.google.com/CommentActivity http://schemas.google.com/CreateActivity http://schemas.google.com/DiscoverActivity http://schemas.google.com/ListenActivity http://schemas.google.com/ReserveActivity http://schemas.google.com/ReviewActivity http://schemas.google.com/WantActivity"/>
				    <input type="hidden" name="access_type" value="offline"/>
				</form>
					</div>
					<div class="btn-margin">
						<button class="loginBtn loginBtn--google" ng-click="login()">
							Login with Google</button>
					</div>
					<div class="modal-footer">
						<div></div>
					</div>
				</div>

			</div>

		</div>
	</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://rawgithub.com/mrzmyr/angular-google-plus/master/dist/angular-google-plus.min.js"></script>
	<script src="<c:url value='/static/js/app.js' />"></script>
	<script src="<c:url value='/static/js/service/user_service.js' />"></script>
	<script
		src="<c:url value='/static/js/controller/user_controller.js' />"></script>
	<script
		src="<c:url value='/static/js/controller/Gplus-controller.js' />"></script>


</body>
</html>