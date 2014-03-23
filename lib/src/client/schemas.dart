part of sqladmin_v1beta1_api;

/** Database instance backup configuration. */
class BackupConfiguration {

  /** Whether this configuration is enabled. */
  core.bool enabled;

  /** Identifier for this configuration. This gets generated automatically when a backup configuration is created. */
  core.String id;

  /** This is always sql#backupConfiguration. */
  core.String kind;

  /** Start time for the daily backup configuration in UTC timezone in the 24 hour format - HH:MM. */
  core.String startTime;

  /** Create new BackupConfiguration from JSON data */
  BackupConfiguration.fromJson(core.Map json) {
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for BackupConfiguration */
  core.Map toJson() {
    var output = new core.Map();

    if (enabled != null) {
      output["enabled"] = enabled;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of BackupConfiguration */
  core.String toString() => JSON.encode(this.toJson());

}

/** A database instance backup run resource. */
class BackupRun {

  /** Backup Configuration identifier. */
  core.String backupConfiguration;

  /** The due time of this run in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String dueTime;

  /** The time the backup operation completed in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String endTime;

  /** The time the run was enqueued in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String enqueuedTime;

  /** Information about why the backup operation failed. This is only present if the run has the FAILED status. */
  OperationError error;

  /** Name of the database instance. */
  core.String instance;

  /** This is always sql#backupRun. */
  core.String kind;

  /** The time the backup operation actually started in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String startTime;

  /** The status of this run. */
  core.String status;

  /** Create new BackupRun from JSON data */
  BackupRun.fromJson(core.Map json) {
    if (json.containsKey("backupConfiguration")) {
      backupConfiguration = json["backupConfiguration"];
    }
    if (json.containsKey("dueTime")) {
      dueTime = json["dueTime"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("enqueuedTime")) {
      enqueuedTime = json["enqueuedTime"];
    }
    if (json.containsKey("error")) {
      error = new OperationError.fromJson(json["error"]);
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for BackupRun */
  core.Map toJson() {
    var output = new core.Map();

    if (backupConfiguration != null) {
      output["backupConfiguration"] = backupConfiguration;
    }
    if (dueTime != null) {
      output["dueTime"] = dueTime;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (enqueuedTime != null) {
      output["enqueuedTime"] = enqueuedTime;
    }
    if (error != null) {
      output["error"] = error.toJson();
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of BackupRun */
  core.String toString() => JSON.encode(this.toJson());

}

/** Backup run list results. */
class BackupRunsListResponse {

  /** A list of backup runs in reverse chronological order of the enqueued time. */
  core.List<BackupRun> items;

  /** This is always sql#backupRunsList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new BackupRunsListResponse from JSON data */
  BackupRunsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new BackupRun.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for BackupRunsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of BackupRunsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Cloud SQL instance resource. */
class DatabaseInstance {

  /** The current disk usage of the instance in bytes. */
  core.int currentDiskSize;

  /** The database engine type and version, for example MYSQL_5_5 for MySQL 5.5. */
  core.String databaseVersion;

  /** Etag for this resource - a version number for the settings object in this resource. This field has no effect when passed as a request parameter. Instead, the contents of this field should be passed in an 'If-Match' http header for use in optimistic locking. */
  core.String etag;

  /** Name of the Cloud SQL instance. This does not include the project ID. */
  core.String instance;

  /** This is always sql#instance. */
  core.String kind;

  /** The maximum disk size of the instance in bytes. */
  core.int maxDiskSize;

  /** The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable. */
  core.String project;

  /** The geographical region. Can be us-east1, us-central or europe-west1. Defaults to us-central. The region can not be changed after instance creation. */
  core.String region;

  /** The user settings. */
  Settings settings;

  /** The current serving state of the Cloud SQL instance. This can be one of the following.
RUNNABLE: The instance is running, or is ready to run when accessed.
SUSPENDED: The instance is not available, for example due to problems with billing.
PENDING_CREATE: The instance is being created.
MAINTENANCE: The instance is down for maintenance.
UNKNOWN_STATE: The state of the instance is unknown. */
  core.String state;

  /** Create new DatabaseInstance from JSON data */
  DatabaseInstance.fromJson(core.Map json) {
    if (json.containsKey("currentDiskSize")) {
      currentDiskSize = (json["currentDiskSize"] is core.String) ? core.int.parse(json["currentDiskSize"]) : json["currentDiskSize"];
    }
    if (json.containsKey("databaseVersion")) {
      databaseVersion = json["databaseVersion"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxDiskSize")) {
      maxDiskSize = (json["maxDiskSize"] is core.String) ? core.int.parse(json["maxDiskSize"]) : json["maxDiskSize"];
    }
    if (json.containsKey("project")) {
      project = json["project"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("settings")) {
      settings = new Settings.fromJson(json["settings"]);
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for DatabaseInstance */
  core.Map toJson() {
    var output = new core.Map();

    if (currentDiskSize != null) {
      output["currentDiskSize"] = currentDiskSize;
    }
    if (databaseVersion != null) {
      output["databaseVersion"] = databaseVersion;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxDiskSize != null) {
      output["maxDiskSize"] = maxDiskSize;
    }
    if (project != null) {
      output["project"] = project;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (settings != null) {
      output["settings"] = settings.toJson();
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of DatabaseInstance */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export context. */
class ExportContext {

  /** Databases (for example, guestbook) from which the export is made. If unspecified, all databases are exported. */
  core.List<core.String> database;

  /** This is always sql#exportContext. */
  core.String kind;

  /** Tables to export, or that were exported, from the specified database. If you specify tables, specify one and only one database. */
  core.List<core.String> table;

  /** The path to the file in Google Cloud Storage where the export will be stored, or where it was already stored. The URI is in the form gs://bucketName/fileName. If the file already exists, the operation fails. If the filename ends with .gz, the contents are compressed. */
  core.String uri;

  /** Create new ExportContext from JSON data */
  ExportContext.fromJson(core.Map json) {
    if (json.containsKey("database")) {
      database = json["database"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("table")) {
      table = json["table"].toList();
    }
    if (json.containsKey("uri")) {
      uri = json["uri"];
    }
  }

  /** Create JSON Object for ExportContext */
  core.Map toJson() {
    var output = new core.Map();

    if (database != null) {
      output["database"] = database.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (table != null) {
      output["table"] = table.toList();
    }
    if (uri != null) {
      output["uri"] = uri;
    }

    return output;
  }

  /** Return String representation of ExportContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import context. */
class ImportContext {

  /** The database (for example, guestbook) to which the import is made. If not set, it is assumed that the database is specified in the file to be imported. */
  core.String database;

  /** This is always sql#importContext. */
  core.String kind;

  /** A path to the MySQL dump file in Google Cloud Storage from which the import is made. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. */
  core.List<core.String> uri;

  /** Create new ImportContext from JSON data */
  ImportContext.fromJson(core.Map json) {
    if (json.containsKey("database")) {
      database = json["database"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("uri")) {
      uri = json["uri"].toList();
    }
  }

  /** Create JSON Object for ImportContext */
  core.Map toJson() {
    var output = new core.Map();

    if (database != null) {
      output["database"] = database;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (uri != null) {
      output["uri"] = uri.toList();
    }

    return output;
  }

  /** Return String representation of ImportContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** An Operations resource contains information about database instance operations such as create, delete, and restart. Operations resources are created in response to operations that were initiated; you never create them directly. */
class InstanceOperation {

  /** The time this operation finished in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String endTime;

  /** The time this operation was enqueued in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String enqueuedTime;

  /** The error(s) encountered by this operation. Only set if the operation results in an error. */
  core.List<OperationError> error;

  /** The context for export operation, if applicable. */
  ExportContext exportContext;

  /** The context for import operation, if applicable. */
  ImportContext importContext;

  /** Name of the database instance. */
  core.String instance;

  /** This is always sql#instanceOperation. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** The type of the operation. Valid values are CREATE, DELETE, UPDATE, RESTART, IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME. */
  core.String operationType;

  /** The time this operation actually started in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String startTime;

  /** The state of an operation. Valid values are PENDING, RUNNING, DONE, UNKNOWN. */
  core.String state;

  /** The email address of the user who initiated this operation. */
  core.String userEmailAddress;

  /** Create new InstanceOperation from JSON data */
  InstanceOperation.fromJson(core.Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("enqueuedTime")) {
      enqueuedTime = json["enqueuedTime"];
    }
    if (json.containsKey("error")) {
      error = json["error"].map((errorItem) => new OperationError.fromJson(errorItem)).toList();
    }
    if (json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(json["exportContext"]);
    }
    if (json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(json["importContext"]);
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
    if (json.containsKey("operationType")) {
      operationType = json["operationType"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("userEmailAddress")) {
      userEmailAddress = json["userEmailAddress"];
    }
  }

  /** Create JSON Object for InstanceOperation */
  core.Map toJson() {
    var output = new core.Map();

    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (enqueuedTime != null) {
      output["enqueuedTime"] = enqueuedTime;
    }
    if (error != null) {
      output["error"] = error.map((errorItem) => errorItem.toJson()).toList();
    }
    if (exportContext != null) {
      output["exportContext"] = exportContext.toJson();
    }
    if (importContext != null) {
      output["importContext"] = importContext.toJson();
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }
    if (operationType != null) {
      output["operationType"] = operationType;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (userEmailAddress != null) {
      output["userEmailAddress"] = userEmailAddress;
    }

    return output;
  }

  /** Return String representation of InstanceOperation */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance delete response. */
class InstancesDeleteResponse {

  /** This is always sql#instancesDelete. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesDeleteResponse from JSON data */
  InstancesDeleteResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesDeleteResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesDeleteResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export request. */
class InstancesExportRequest {

  /** Contains details about the export operation. */
  ExportContext exportContext;

  /** Create new InstancesExportRequest from JSON data */
  InstancesExportRequest.fromJson(core.Map json) {
    if (json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(json["exportContext"]);
    }
  }

  /** Create JSON Object for InstancesExportRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (exportContext != null) {
      output["exportContext"] = exportContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesExportRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export response. */
class InstancesExportResponse {

  /** This is always sql#instancesExport. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesExportResponse from JSON data */
  InstancesExportResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesExportResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesExportResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import request. */
class InstancesImportRequest {

  /** Contains details about the import operation. */
  ImportContext importContext;

  /** Create new InstancesImportRequest from JSON data */
  InstancesImportRequest.fromJson(core.Map json) {
    if (json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(json["importContext"]);
    }
  }

  /** Create JSON Object for InstancesImportRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (importContext != null) {
      output["importContext"] = importContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesImportRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import response. */
class InstancesImportResponse {

  /** This is always sql#instancesImport. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesImportResponse from JSON data */
  InstancesImportResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesImportResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesImportResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance insert response. */
class InstancesInsertResponse {

  /** This is always sql#instancesInsert. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesInsertResponse from JSON data */
  InstancesInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instances list response. */
class InstancesListResponse {

  /** List of database instance resources. */
  core.List<DatabaseInstance> items;

  /** This is always sql#instancesList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new InstancesListResponse from JSON data */
  InstancesListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new DatabaseInstance.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for InstancesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of InstancesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance restart response. */
class InstancesRestartResponse {

  /** This is always sql#instancesRestart. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesRestartResponse from JSON data */
  InstancesRestartResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesRestartResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesRestartResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance restore backup response. */
class InstancesRestoreBackupResponse {

  /** This is always sql#instancesRestoreBackup. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesRestoreBackupResponse from JSON data */
  InstancesRestoreBackupResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesRestoreBackupResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesRestoreBackupResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance update response. */
class InstancesUpdateResponse {

  /** This is always sql#instancesUpdate. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve information about the operation. */
  core.String operation;

  /** Create new InstancesUpdateResponse from JSON data */
  InstancesUpdateResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesUpdateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesUpdateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance operation error. */
class OperationError {

  /** Identifies the specific error that occurred. */
  core.String code;

  /** This is always sql#operationError. */
  core.String kind;

  /** Create new OperationError from JSON data */
  OperationError.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for OperationError */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of OperationError */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance list operations response. */
class OperationsListResponse {

  /** List of operation resources. */
  core.List<InstanceOperation> items;

  /** This is always sql#operationsList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new OperationsListResponse from JSON data */
  OperationsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new InstanceOperation.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for OperationsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of OperationsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance settings. */
class Settings {

  /** The activation policy for this instance. This specifies when the instance should be activated and is applicable only when the instance state is RUNNABLE. This can be one of the following.
ALWAYS: The instance should always be active.
NEVER: The instance should never be activated.
ON_DEMAND: The instance is activated upon receiving requests. */
  core.String activationPolicy;

  /** The AppEngine app ids that can access this instance. */
  core.List<core.String> authorizedGaeApplications;

  /** The daily backup configuration for the instance. */
  core.List<BackupConfiguration> backupConfiguration;

  /** This is always sql#settings. */
  core.String kind;

  /** The pricing plan for this instance. This can be either PER_USE or PACKAGE. */
  core.String pricingPlan;

  /** The type of replication this instance uses. This can be either ASYNCHRONOUS or SYNCHRONOUS. */
  core.String replicationType;

  /** The tier of service for this instance, for example D1, D2. For more information, see pricing. */
  core.String tier;

  /** Create new Settings from JSON data */
  Settings.fromJson(core.Map json) {
    if (json.containsKey("activationPolicy")) {
      activationPolicy = json["activationPolicy"];
    }
    if (json.containsKey("authorizedGaeApplications")) {
      authorizedGaeApplications = json["authorizedGaeApplications"].toList();
    }
    if (json.containsKey("backupConfiguration")) {
      backupConfiguration = json["backupConfiguration"].map((backupConfigurationItem) => new BackupConfiguration.fromJson(backupConfigurationItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pricingPlan")) {
      pricingPlan = json["pricingPlan"];
    }
    if (json.containsKey("replicationType")) {
      replicationType = json["replicationType"];
    }
    if (json.containsKey("tier")) {
      tier = json["tier"];
    }
  }

  /** Create JSON Object for Settings */
  core.Map toJson() {
    var output = new core.Map();

    if (activationPolicy != null) {
      output["activationPolicy"] = activationPolicy;
    }
    if (authorizedGaeApplications != null) {
      output["authorizedGaeApplications"] = authorizedGaeApplications.toList();
    }
    if (backupConfiguration != null) {
      output["backupConfiguration"] = backupConfiguration.map((backupConfigurationItem) => backupConfigurationItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pricingPlan != null) {
      output["pricingPlan"] = pricingPlan;
    }
    if (replicationType != null) {
      output["replicationType"] = replicationType;
    }
    if (tier != null) {
      output["tier"] = tier;
    }

    return output;
  }

  /** Return String representation of Settings */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Google Cloud SQL service tier resource. */
class Tier {

  /** The maximum disk size of this tier in bytes. */
  core.int DiskQuota;

  /** The maximum RAM usage of this tier in bytes. */
  core.int RAM;

  /** This is always sql#tier. */
  core.String kind;

  /** The applicable regions for this tier. Can be us-east1 and europe-west1. */
  core.List<core.String> region;

  /** An identifier for the service tier, for example D1, D2 etc. For related information, see Pricing. */
  core.String tier;

  /** Create new Tier from JSON data */
  Tier.fromJson(core.Map json) {
    if (json.containsKey("DiskQuota")) {
      DiskQuota = (json["DiskQuota"] is core.String) ? core.int.parse(json["DiskQuota"]) : json["DiskQuota"];
    }
    if (json.containsKey("RAM")) {
      RAM = (json["RAM"] is core.String) ? core.int.parse(json["RAM"]) : json["RAM"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("region")) {
      region = json["region"].toList();
    }
    if (json.containsKey("tier")) {
      tier = json["tier"];
    }
  }

  /** Create JSON Object for Tier */
  core.Map toJson() {
    var output = new core.Map();

    if (DiskQuota != null) {
      output["DiskQuota"] = DiskQuota;
    }
    if (RAM != null) {
      output["RAM"] = RAM;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (region != null) {
      output["region"] = region.toList();
    }
    if (tier != null) {
      output["tier"] = tier;
    }

    return output;
  }

  /** Return String representation of Tier */
  core.String toString() => JSON.encode(this.toJson());

}

/** Tiers list response. */
class TiersListResponse {

  /** List of tiers. */
  core.List<Tier> items;

  /** This is always sql#tiersList. */
  core.String kind;

  /** Create new TiersListResponse from JSON data */
  TiersListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Tier.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TiersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TiersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
