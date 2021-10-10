<%@ page
    language="java"
    import="java.sql.*"
    import="java.util.*"
    import="javax.servlet.http.*"
    contentType="text/html;charset=utf-8" %>
    <jsp:useBean id="lbox" scope="session" class="lightbox.Sample1" />
<%@ include file="model.jsp" %>
<%
// *********************************************************
// ページ処理
// *********************************************************
noCache(response);
request.setCharacterEncoding("utf-8");

StringBuilder html = new StringBuilder();

String strTitle = "TOMCAT JSP MySQL SELECT テーブルサンプル";
String strMethod = request.getMethod();

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");

try {
    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost/lightbox?user=root&password=&characterEncoding=UTF-8"
    );

    // ステートメント
    stmt = conn.createStatement();
    // SQL 実行
    rs = stmt.executeQuery("select * from 社員マスタ where 社員コード <= '0006'");

    while( rs.next() ) {

        html.append("<tr>");
        setHtmlColumn(html,rs.getString("社員コード"));
        setHtmlColumn(html,rs.getString("氏名"));
        setHtmlColumn(html,rs.getString("フリガナ"));
        setHtmlColumn(html,rs.getString("所属"));
        setHtmlColumn(html,rs.getString("性別"));
        setHtmlColumn(html,rs.getString("給与"));
        setHtmlColumn(html,rs.getString("手当"));
        setHtmlColumn(html,rs.getString("管理者"));
        setHtmlColumn(html,rs.getString("生年月日"));
        html.append("</tr>");

    }

    rs.close();
    stmt.close();
    conn.close();

}
catch (Exception e) {
    out.println( e.getMessage() );
    e.printStackTrace();
}

%>
<%@ include file="view.html" %>
