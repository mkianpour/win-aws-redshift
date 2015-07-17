$ODBCPath = "HKLM:\SOFTWARE\ODBC\ODBC.INI"

$dsn = $args[0]

Copy-Item $ODBCPath"\Sample Amazon Redshift DSN" $ODBCPath"\$dsn"
Set-ItemProperty $ODBCPath"\ODBC Data Sources" -name "$dsn" -value "Amazon Redshift (x64)"