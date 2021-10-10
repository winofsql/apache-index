<%@ page
    language="java"
    contentType="text/html;charset=utf-8" %>
    <jsp:useBean id="lbox" scope="session" class="lightbox.Sample1" />
<%@ include file="model.jsp" %>
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
<%@ include file="view.html" %>