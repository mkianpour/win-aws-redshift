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
    <td><tt>['win-redshift']['database']</tt></td>
    <td>String</td>
    <td>Redshift Database Name</td>
    <td><tt>dev</tt></td>
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
