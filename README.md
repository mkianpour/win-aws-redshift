# WinRedshift-cookbook

This cookbook installs and configures Redshift ODBC DSN on Windows 


## Supported Platforms

Windows 2012 - All flavours

## Attributes

<table>
  <tr>
    <th>Attribute</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['name']</tt></td>
    <td>String</td>
    <td>DSN Name</td>
    <td><tt>awsredshift</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['server']</tt></td>
    <td>String</td>
    <td>Redshift cluster endpoint address</td>
    <td><tt>REPLACEME</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['database']</tt></td>
    <td>String</td>
    <td>Redshift Database Name</td>
    <td><tt>dev</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['port']</tt></td>
    <td>String</td>
    <td>Redshift cluster port</td>
    <td><tt>5439</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['ssl']</tt></td>
    <td>String</td>
    <td>SSL Authentication mode</td>
    <td><tt>prefer</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['uid']</tt></td>
    <td>String</td>
    <td>Credentials - User</td>
    <td><tt>masteruser</tt></td>
  </tr>
  <tr>
    <td><tt>['win-redshift']['dsn']['pwd']</tt></td>
    <td>String</td>
    <td>Credentials - PWD</td>
    <td><tt>REPLACEME</tt></td>
  </tr>
</table>

## Usage

### fortest::default

Include `win-redshift` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[win-redshift]"
  ]
}
```

## License and Authors

Author:: Mehdi - mkianpour@gmail.com
