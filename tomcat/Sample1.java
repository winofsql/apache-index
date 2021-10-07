package lightbox;

import javax.servlet.http.*;
import java.util.*;
import java.text.*;

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

	// *****************************************************
	// 日付文字列 ( インスタンス )
	// *****************************************************
	public String getDateString( ) {

		Date myDate = null;
		String strDate = null;

		myDate = new Date();
		strDate = DateFormat.getDateInstance().format(myDate);

		return strDate;

	}

	// *****************************************************
	// 日付文字列 ( クラス )
	// *****************************************************
	public static String getDateSystem( ) {

		Date myDate = null;
		String strDate = null;

		myDate = new Date();
		strDate = DateFormat.getDateInstance().format(myDate);

		return strDate;

	}    

}