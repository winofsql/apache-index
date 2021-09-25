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
