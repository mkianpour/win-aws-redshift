# WinRedshift-cookbook

This cookbook installs and configures Redshift ODBC DSN on Windows 


## Supported Platforms

Windows 2012 - All flavours

## Attributes

<table>
  <tr>
    <th>Database</th>
    <th>String</th>
    <th>Redshift Database Name</th>
    <th>dev</th>
  </tr>
  <tr>
    <td><tt>['win-redshift']['database']</tt></td>
    <td>String</td>
    <td>whether to include database</td>
    <td><tt>true</tt></td>
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
