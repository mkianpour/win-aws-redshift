$ODBCPath = "HKLM:\SOFTWARE\ODBC\ODBC.INI"

Copy-Item $ODBCPath"\Sample Amazon Redshift DSN" $ODBCPath"\company-redshift"
Set-ItemProperty $ODBCPath"\ODBC Data Sources" -name "company-redshift" -value "Amazon Redshift (x64)"