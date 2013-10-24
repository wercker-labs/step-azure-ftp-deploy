# azure-ftp-deploy

Deploy your code to Windows Azure using FTP.
Used in wercker-labs/windows, the experimental wercker windows box

To use:
* Go to Windows Azure https://manage.windowsazure.com.
* Create a new web site.
* On the dashboard, download the publish profile.
* Get the `publishProfile` element with `publishMethod="FTP"`.
* Get `publishUrl`, `userName` and `userPWD`.

# Options

* `files` The files to test, use space as seperator. When left empty, all dll's with "test" in their name will be tested.

* `publish-url` (required) Full FTP path to upload to. Should start with ftp:// and end with wwwroot.
* `username` (required) Username to connect to FTP server. _You must escape `\` and `$`, see example._
* `password` (required) Password to connect to FTP server

# Example

Add AZURE_PASSWORD as deploy target or application environment variable.

```yaml
build:
  steps:
    - wercker-labs/azure-ftp-deploy:
        publish-url: ftp://waws-prod-blu-003.ftp.azurewebsites.windows.net/site/wwwroot
        username: test\\\$test
        password: $AZURE_PASSWORD
```

# License

The MIT License (MIT)

Copyright (c) 2013 wercker

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog


## 0.0.1

- Initial release
