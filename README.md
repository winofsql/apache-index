# apache-index

## httpd.conf の変更
```
Include "conf/extra/httpd-xampp.conf"
Include "conf/extra/httpd-lightbox.conf"
```

## .htaccess
```
DirectoryIndex index.php
Options +Indexes
DirectoryIndex /index/files.php
```

## httpd-xampp.conf
```xml
    Alias /php "D:\app\workspace\subject-0924\php"
    <Directory "D:\app\workspace\subject-0924\php">
        Options +Indexes
        AllowOverride All
        Require all granted
        ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var
    </Directory>    
```

![image](https://user-images.githubusercontent.com/1501327/134769877-7163d3fb-a225-463e-a824-3dbff075de9c.png)

![image](https://user-images.githubusercontent.com/1501327/134769923-872c18ae-31c5-4b04-a7fa-97ce81d92eec.png)

### web.xml
![image](https://user-images.githubusercontent.com/1501327/157796064-d2a50ec5-c80b-48d0-ad50-7ac687d74c30.png)
```xml
        <init-param>
            <param-name>listings</param-name>
            <param-value>true</param-value>
        </init-param>
```
![image](https://user-images.githubusercontent.com/1501327/157795752-fae270c3-edf0-4f1f-b8b8-21fac2f69e37.png)
```xml
        <init-param>
            <param-name>trimSpaces</param-name>
            <param-value>true</param-value>
        </init-param>
        <init-param>
            <param-name>compilerSourceVM</param-name>
            <param-value>1.8</param-value>
        </init-param>
        <init-param>
            <param-name>compilerTargetVM</param-name>
            <param-value>1.8</param-value>
        </init-param>
```
