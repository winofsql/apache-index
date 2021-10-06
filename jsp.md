## 拡張( Syntax Highlight )
```
pthorsson.vscode-jsp
```

![image](https://user-images.githubusercontent.com/1501327/136183602-d6e3587c-0362-4d98-9649-8e6459d39b8b.png)

## comp.bat
```
\java\bin\javac -encoding utf8 -classpath "..;\xampp\tomcat\lib\servlet-api.jar;\xampp\tomcat\lib\jsp-api.jar" Sample1.java
```

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
