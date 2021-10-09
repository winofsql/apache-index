## レジストリ
```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft]

[HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Development Kit]
"JavaHome"="C:\\java"
```
![image](https://user-images.githubusercontent.com/1501327/136312504-2e5cd439-2c88-4035-980a-06fc32c53f88.png)
![image](https://user-images.githubusercontent.com/1501327/136312740-9da8c46a-d689-4067-8974-0ffaca47bf9e.png)

![image](https://user-images.githubusercontent.com/1501327/136183602-d6e3587c-0362-4d98-9649-8e6459d39b8b.png)

## comp.bat
```
\java\bin\javac -encoding utf8 -classpath "..;\xampp\tomcat\lib\servlet-api.jar;\xampp\tomcat\lib\jsp-api.jar" Sample1.java
```

![image](https://user-images.githubusercontent.com/1501327/136183948-b342788d-fcb3-4ad8-9740-f32409e5615a.png)

## Sample1.java
```java
package lightbox;

import javax.servlet.http.*;

public class Sample1 {

    // *****************************************************
    // リクエスト取得
    // *****************************************************
    public String request( HttpServletRequest request, String key ) {

        if ( request.getParameter( key ) == null ) {
            return "";
        }

        return request.getParameter( key );

    }

}
```

## Sample.jsp
```jsp
<%@ page
	language="java"
	contentType="text/html;charset=utf-8" %>
<jsp:useBean id="lightbox" scope="session" class="lightbox.Sample1" />
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

String strField1 = lightbox.request( request, "field1");
String strField2 = lightbox.request( request, "field2");

String[] month = {"睦月","如月","弥生","卯月","皐月","水無月","文月","葉月","長月","神無月","霜月","師走"};

%>
<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.css">

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
}
</style>
</head>
<body>
<div id="main">

<form method="get">
	<input type="text" name="field1" value="<%= strField1 %>">
	<input type="submit" name="send" value="GET" class="btn btn-info">
</form>

<form method="post">
	<input type="text" name="field2" value="<%= strField2 %>">
	<input type="submit" name="send" value="POST" class="btn btn-info">
</form>


<div class="alert alert-primary"><%= request.getMethod() %></div>

<%
out.println( printFor(month, strField2) );
%>

<%= strField1 %>
</div>
</body>
</html>
```
