part of sqladmin_v1beta1_api_client;

class BackupRunsResource_ extends Resource {

  BackupRunsResource_(Client client) : super(client) {
  }

  /**
   * Retrieves a resource containing information about a backup run.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - Identifier for the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [dueTime] - The time when this run is due to start in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BackupRun> get(core.String project, core.String instance, core.String backupConfiguration, core.String dueTime, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/backupRuns/{backupConfiguration}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) urlParams["backupConfiguration"] = backupConfiguration;
    if (dueTime == null) paramErrors.add("dueTime is required");
    if (dueTime != null) queryParams["dueTime"] = dueTime;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BackupRun.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists all backup runs associated with a given instance and configuration in the reverse chronological order of the enqueued time.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - Identifier for the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [maxResults] - Maximum number of backup runs per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BackupRunsListResponse> list(core.String project, core.String instance, core.String backupConfiguration, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/backupRuns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) queryParams["backupConfiguration"] = backupConfiguration;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BackupRunsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class InstancesResource_ extends Resource {

  InstancesResource_(Client client) : super(client) {
  }

  /**
   * Deletes a database instance.
   *
   * [project] - Project ID of the project that contains the instance to be deleted. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesDeleteResponse> delete(core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesDeleteResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Exports data from a database instance to a Google Cloud Storage bucket as a MySQL dump file.
   *
   * [request] - InstancesExportRequest to send in this request
   *
   * [project] - Project ID of the project that contains the instance to be exported. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesExportResponse> export(InstancesExportRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/export";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesExportResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a resource containing information about a database instance.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatabaseInstance> get(core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DatabaseInstance.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Imports data into a database instance from a MySQL dump file in Google Cloud Storage.
   *
   * [request] - InstancesImportRequest to send in this request
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesImportResponse> import(InstancesImportRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesImportResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new database instance.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project to which the newly created database instances should belong. You can find this on the project summary page of the Google APIs Console.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesInsertResponse> insert(DatabaseInstance request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesInsertResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists instances under a given project in the alphabetical order of the instance name.
   *
   * [project] - Project ID of the project for which to list database instances. You can find this on the project summary page of the Google APIs Console.
   *
   * [maxResults] - The maximum number of results to return per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesListResponse> list(core.String project, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates settings of a database instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.. This method supports patch semantics.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesUpdateResponse> patch(DatabaseInstance request, core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesUpdateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Restarts a database instance.
   *
   * [project] - Project ID of the project that contains the instance to be restarted. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesRestartResponse> restart(core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/restart";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesRestartResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Restores a backup of a database instance.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - The identifier of the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [dueTime] - The time when this run is due to start in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesRestoreBackupResponse> restoreBackup(core.String project, core.String instance, core.String backupConfiguration, core.String dueTime, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/restoreBackup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) queryParams["backupConfiguration"] = backupConfiguration;
    if (dueTime == null) paramErrors.add("dueTime is required");
    if (dueTime != null) queryParams["dueTime"] = dueTime;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesRestoreBackupResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates settings of a database instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesUpdateResponse> update(DatabaseInstance request, core.String project, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstancesUpdateResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class OperationsResource_ extends Resource {

  OperationsResource_(Client client) : super(client) {
  }

  /**
   * Retrieves an instance operation that has been performed on an instance.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [operation] - Instance operation ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstanceOperation> get(core.String project, core.String instance, core.String operation, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstanceOperation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists all instance operations that have been performed on the given database instance in the reverse chronological order of the start time.
   *
   * [project] - Project ID of the project that contains the instance. You can find this on the project summary page of the Google APIs Console.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [maxResults] - Maximum number of operations per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OperationsListResponse> list(core.String project, core.String instance, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "projects/{project}/instances/{instance}/operations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new OperationsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TiersResource_ extends Resource {

  TiersResource_(Client client) : super(client) {
  }

  /**
   * Lists all available service tiers for Google Cloud SQL, for example D1, D2. For related information, see Pricing.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TiersListResponse> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "tiers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TiersListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

