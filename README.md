# apache-index
## .htaccess
```
DirectoryIndex index.php
Options +Indexes
DirectoryIndex /index/files.php
```

## httpd-xampp.conf
```xml
    Alias /php "C:\app\workspace\subject-0924\php"
    <Directory "C:\app\workspace\subject-0924\php">
        Options +Indexes
        AllowOverride All
        Require all granted
        ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var
    </Directory>    
```

![image](https://user-images.githubusercontent.com/1501327/134769877-7163d3fb-a225-463e-a824-3dbff075de9c.png)

![image](https://user-images.githubusercontent.com/1501327/134769923-872c18ae-31c5-4b04-a7fa-97ce81d92eec.png)
