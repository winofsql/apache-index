<%!
// *********************************************************
// ローカル関数
// *********************************************************
public void setHtmlColumn( StringBuilder data, String Column ) {

    if ( Column == null ) {
        Column = "";
    }

    data.append("<td>");
    data.append(Column);
    data.append("</td>");
}
%>