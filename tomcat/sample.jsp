<%@ page
    language="java"
    contentType="text/html;charset=utf-8" %>
<jsp:useBean id="lbox" scope="session" class="lightbox.Sample1" />
<%!
// *********************************************************
// ローカル関数
// *********************************************************
public String printFor( String[] data, String str ) {

    String ret = "";

    for( int i = 0; i < data.length; i++ ) {
        ret += String.format( "%s : %s<br>", data[i], str );
    }

    return ret;
}
%>
<%
// *********************************************************
// ページ処理
// *********************************************************
request.setCharacterEncoding("utf-8");

String strTitle = "TOMCAT JSP サンプル";
String strMethod = request.getMethod();

String strField1 = lbox.request( request, "field1");
String strField2 = lbox.request( request, "field2");

String[] month = {"睦月","如月","弥生","卯月","皐月","水無月","文月","葉月","長月","神無月","霜月","師走"};

%>
<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta charset="UTF-8">
<title><%= strTitle %></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.2/css/bootstrap.min.css">

<style>
#main {
    padding: 30px;
    font-size: 24px;
}

form {
    margin-bottom: 20px;
}

.btn {
    vertical-align: top;
    width: 120px;
}
</style>
</head>
<body>
<h3 class="alert alert-primary"><%= strTitle %></title>
</h3>

<div id="main">

    <form method="get">
        <input type="text" name="field1" value="<%= strField1 %>">
        <input type="submit" name="send" value="GET" class="btn btn-info ms-3">
    </form>

    <form method="post">
        <input type="text" name="field2" value="${param.field2}">
        <input type="submit" name="send" value="POST" class="btn btn-info ms-3">
    </form>

    <div class="alert alert-primary"><%= strMethod %></div>

    <%
    out.println( printFor(month, strField2) );
    %>

    <hr>

    <%= strField1 %>

    <hr>

    ${param.field1}

    <hr>

    <%= lbox.getDateString() %>

    <hr>

    <jsp:getProperty name="lbox" property="dateString" />

    <hr>

    <%= lightbox.Sample1.getDateSystem() %>

    <hr>

    <%
    // セッション初回
    if (session.isNew()) {
        session.setAttribute("app-session", "OK");
    }
    else {
        out.println(session.getAttribute("app-session"));
        if ( strField2.equals("quit") ) {
            response.sendRedirect("sample.jsp");
        }
    }
    %>

</div>
</body>
</html>
