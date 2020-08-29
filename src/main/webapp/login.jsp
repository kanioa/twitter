<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.08.2020
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">

<head>
    <jsp:include page="include/meta.jsp"/>
    <title>SDA Twitter - LOGIN</title>
    <meta name="description" content="strona logowania">
    <meta name="keyword" content="log in, sda">
    <link href="css/login.css" rel="stylesheet">
</head>

<body>
<jsp:include page="include/header.jsp"/>

<main class="container pb-3 mb-3">
    <div class="row text-center">
        <div class="col-md-4 m-auto">
            <div id="login-form" class="container">
                <form class="form-signin" method="post" action="login">
                <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt=""
                     width="72"
                     height="72">
                <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                <label for="inputLogin" class="sr-only">Login</label>
                <input type="text" id="inputLogin" name="login" class="form-control" placeholder="Login" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2017-2018
                    </form>
            </div>
        </div>
    </div>
</main>
<jsp:include page="include/footer.jsp"/>

</body>
</html>