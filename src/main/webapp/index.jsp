<%@ page import="pl.sda.twitter.persistance.entities.TbArticle" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="articleService" scope="request" class="pl.sda.twitter.services.ArticleService"/>

<!doctype html>
<html lang=pl.sda.twitter.services.ArticleService"en">

<head>
    <jsp:include page="include/meta.jsp"/>
    <title>SDA Twitter lista artykułów</title>
    <meta name="keyword" content="lista, artykuł, sda">
</head>

<body>
<jsp:include page="include/header.jsp"/>

<main role="main">

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called a
                jumbotron and three supporting pieces of content. Use it as a starting point to create something more
                unique.</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
        </div>
    </div>

    <%
        List<TbArticle> articles = articleService.getArticles();
        pageContext.setAttribute("articles", articles);
    %>


    <div class="container">

        <c:forEach items = "${articles}" var="articles">
            <div class="row">
                <div>
                    <h2>Heading</h2>
                    <p>S{article.getContent()}</p>
                    <p><a class="btn btn-secondary" href="#" role="button"> View details » </a></p>
                </div>
            </div>

</c:forEach>
    </div>
</main>

<jsp:include page="include/footer.jsp"/>

</body>
</html>