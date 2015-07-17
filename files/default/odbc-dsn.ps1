$ODBCPath = "HKLM:\SOFTWARE\ODBC\ODBC.INI"
$dsn = $args[0]
$DSNPath = $ODBCPath + "\" + $dsn

Copy-Item $ODBCPath"\Sample Amazon Redshift DSN" $DSNPath
Set-ItemProperty $ODBCPath"\ODBC Data Sources" -name "$dsn" -value "Amazon Redshift (x64)"
Set-ItemProperty $DSNPath -name "Server" -value $args[1]
Set-ItemProperty $DSNPath -name "Servername" -value $args[1]
Set-ItemProperty $DSNPath -name "Port" -value $args[2]
Set-ItemProperty $DSNPath -name "Database" -value $args[3]
Set-ItemProperty $DSNPath -name "UID" -value $args[4]
Set-ItemProperty $DSNPath -name "PWD" -value $args[5]
Set-ItemProperty $DSNPath -name "SSLmode" -value $args[6]