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