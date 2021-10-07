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