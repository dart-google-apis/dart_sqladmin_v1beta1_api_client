# google_sqladmin_v1beta1_api

### Description

Auto-generated client library for accessing the sqladmin v1beta1 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Cloud SQL Administration API - sqladmin v1beta1

API for Cloud SQL database instance management.

Official API documentation: https://developers.google.com/cloud-sql/docs/admin-api/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_sqladmin_v1beta1_api: '>=0.3.2'
```

For web applications:

```
  import "package:google_sqladmin_v1beta1_api/sqladmin_v1beta1_api_browser.dart" as sqladminclient;
```

For console application:

```
  import "package:google_sqladmin_v1beta1_api/sqladmin_v1beta1_api_console.dart" as sqladminclient;
```

Working with out authentication the following constructor can be called:

```
  var sqladmin = new sqladminclient.Sqladmin();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var sqladmin = new sqladminclient.Sqladmin(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
