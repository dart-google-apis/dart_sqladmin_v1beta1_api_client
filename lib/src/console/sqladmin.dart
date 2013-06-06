part of sqladmin_v1beta1_api_console;

/** Client to access the sqladmin v1beta1 API */
/** API for Cloud SQL database instance management. */
class Sqladmin extends ConsoleClient {

  BackupRunsResource_ _backupRuns;
  BackupRunsResource_ get backupRuns => _backupRuns;
  InstancesResource_ _instances;
  InstancesResource_ get instances => _instances;
  OperationsResource_ _operations;
  OperationsResource_ get operations => _operations;
  TiersResource_ _tiers;
  TiersResource_ get tiers => _tiers;

  /** OAuth Scope2: Manage your Google SQL Service instances */
  static const core.String SQLSERVICE_ADMIN_SCOPE = "https://www.googleapis.com/auth/sqlservice.admin";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Sqladmin([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/sql/v1beta1/";
    rootUrl = "https://www.googleapis.com/";
    _backupRuns = new BackupRunsResource_(this);
    _instances = new InstancesResource_(this);
    _operations = new OperationsResource_(this);
    _tiers = new TiersResource_(this);
  }
}
