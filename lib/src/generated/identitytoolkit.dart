// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Identity Toolkit API - v2
///
/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
///
/// For more information, see <https://firebase.google.com/docs/auth/>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsMfaEnrollmentResource]
///   - [AccountsMfaSignInResource]
/// - [DefaultSupportedIdpsResource]
/// - [ProjectsResource]
///   - [ProjectsDefaultSupportedIdpConfigsResource]
///   - [ProjectsInboundSamlConfigsResource]
///   - [ProjectsOauthIdpConfigsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsDefaultSupportedIdpConfigsResource]
///     - [ProjectsTenantsInboundSamlConfigsResource]
///     - [ProjectsTenantsOauthIdpConfigsResource]
library identitytoolkit.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': 'google-api-dart-client/v2',
  'x-goog-api-client': 'gl-dart/${commons.dartVersion} gdcl/v2',
};

/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
class IdentityToolkitApi {
  /// See, edit, configure, and delete your Google Cloud Platform data
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  DefaultSupportedIdpsResource get defaultSupportedIdps =>
      DefaultSupportedIdpsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  IdentityToolkitApi(http.Client client,
      {core.String rootUrl = 'https://identitytoolkit.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource get mfaEnrollment =>
      AccountsMfaEnrollmentResource(_requester);
  AccountsMfaSignInResource get mfaSignIn =>
      AccountsMfaSignInResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsMfaEnrollmentResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource(commons.ApiRequester client)
      : _requester = client;

  /// Finishes enrolling a second factor for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse>
      finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:finalize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Step one of the MFA enrollment process.
  ///
  /// In SMS case, this sends an SMS verification code to the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Revokes one second factor from the enrolled second factors for an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2WithdrawMfaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2WithdrawMfaResponse> withdraw(
    GoogleCloudIdentitytoolkitV2WithdrawMfaRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaEnrollment:withdraw';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsMfaSignInResource {
  final commons.ApiRequester _requester;

  AccountsMfaSignInResource(commons.ApiRequester client) : _requester = client;

  /// Verifies the MFA challenge and performs sign-in
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse> finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaSignIn:finalize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sends the MFA challenge
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaSignInResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts/mfaSignIn:start';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DefaultSupportedIdpsResource {
  final commons.ApiRequester _requester;

  DefaultSupportedIdpsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all default supported Idps.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
      GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/defaultSupportedIdps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource get defaultSupportedIdpConfigs =>
      ProjectsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsInboundSamlConfigsResource(_requester);
  ProjectsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsOauthIdpConfigsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource
      get defaultSupportedIdpConfigs =>
          ProjectsTenantsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsTenantsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsTenantsInboundSamlConfigsResource(_requester);
  ProjectsTenantsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsTenantsOauthIdpConfigsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Create a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the tenant will be created. For
  /// example, "projects/project1".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> create(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to delete.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a tenant.
  ///
  /// Requires read permission on the Tenant resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to retrieve.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// An error is returned if the resource does not exist. An empty policy is
  /// returned if the resource exists but does not have a policy set on it.
  /// Caller must have the right Google IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    GoogleIamV1GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List tenants under the given agent project.
  ///
  /// Requires read permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name to list tenants for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return, capped at 1000. If
  /// not specified, the default value is 20.
  ///
  /// [pageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a tenant.
  ///
  /// Requires write permission on the Tenant resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of a tenant. For example:
  /// "projects/{project-id}/tenants/{tenant-id}"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [updateMask] - If provided, only update fields set in the update mask.
  /// Otherwise, all settable fields will be updated. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> patch(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a resource.
  ///
  /// If the policy exists, it is replaced. Caller must have the right Google
  /// IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a resource.
  ///
  /// An error is returned if the resource does not exist. A caller is not
  /// required to have Google IAM permission to make this request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig {
  /// A list of Bundle ID's usable by this project
  core.List<core.String>? bundleIds;
  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig? codeFlowConfig;

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig();

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(core.Map _json) {
    if (_json.containsKey('bundleIds')) {
      bundleIds = (_json['bundleIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('codeFlowConfig')) {
      codeFlowConfig = GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(
          _json['codeFlowConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleIds != null) 'bundleIds': bundleIds!,
        if (codeFlowConfig != null) 'codeFlowConfig': codeFlowConfig!.toJson(),
      };
}

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig {
  /// Key ID for the private key.
  core.String? keyId;

  /// Private key used for signing the client secret JWT.
  core.String? privateKey;

  /// Apple Developer Team ID.
  core.String? teamId;

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig();

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
    if (_json.containsKey('privateKey')) {
      privateKey = _json['privateKey'] as core.String;
    }
    if (_json.containsKey('teamId')) {
      teamId = _json['teamId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (teamId != null) 'teamId': teamId!,
      };
}

/// Standard Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp {
  /// Description of the Idp
  core.String? description;

  /// Id the of Idp
  core.String? idpId;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp();

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('idpId')) {
      idpId = _json['idpId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (idpId != null) 'idpId': idpId!,
      };
}

/// Configurations options for authenticating with a the standard set of
/// Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig {
  /// Additional config for Apple-based projects.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig? appleSignInConfig;

  /// OAuth client ID.
  core.String? clientId;

  /// OAuth client secret.
  core.String? clientSecret;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  core.String? name;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig();

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey('appleSignInConfig')) {
      appleSignInConfig =
          GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(
              _json['appleSignInConfig']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('clientId')) {
      clientId = _json['clientId'] as core.String;
    }
    if (_json.containsKey('clientSecret')) {
      clientSecret = _json['clientSecret'] as core.String;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (appleSignInConfig != null)
          'appleSignInConfig': appleSignInConfig!.toJson(),
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (enabled != null) 'enabled': enabled!,
        if (name != null) 'name': name!,
      };
}

/// History information of the hash algorithm and key.
///
/// Different accounts' passwords may be generated by different version.
class GoogleCloudIdentitytoolkitAdminV2HashConfig {
  /// Different password hash algorithms used in Identity Toolkit.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HASH_ALGORITHM_UNSPECIFIED" : Default value. Do not use.
  /// - "HMAC_SHA256" : HMAC_SHA256
  /// - "HMAC_SHA1" : HMAC_SHA1
  /// - "HMAC_MD5" : HMAC_MD5
  /// - "SCRYPT" : SCRYPT
  /// - "PBKDF_SHA1" : PBKDF_SHA1
  /// - "MD5" : MD5
  /// - "HMAC_SHA512" : HMAC_SHA512
  /// - "SHA1" : SHA1
  /// - "BCRYPT" : BCRYPT
  /// - "PBKDF2_SHA256" : PBKDF2_SHA256
  /// - "SHA256" : SHA256
  /// - "SHA512" : SHA512
  /// - "STANDARD_SCRYPT" : STANDARD_SCRYPT
  core.String? algorithm;

  /// Memory cost for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms. See
  /// https://tools.ietf.org/html/rfc7914 for explanation of field.
  ///
  /// Output only.
  core.int? memoryCost;

  /// How many rounds for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms.
  ///
  /// Output only.
  core.int? rounds;

  /// Non-printable character to be inserted between the salt and plain text
  /// password in base64.
  ///
  /// Output only.
  core.String? saltSeparator;

  /// Signer key in base64.
  ///
  /// Output only.
  core.String? signerKey;

  GoogleCloudIdentitytoolkitAdminV2HashConfig();

  GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'] as core.String;
    }
    if (_json.containsKey('memoryCost')) {
      memoryCost = _json['memoryCost'] as core.int;
    }
    if (_json.containsKey('rounds')) {
      rounds = _json['rounds'] as core.int;
    }
    if (_json.containsKey('saltSeparator')) {
      saltSeparator = _json['saltSeparator'] as core.String;
    }
    if (_json.containsKey('signerKey')) {
      signerKey = _json['signerKey'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (memoryCost != null) 'memoryCost': memoryCost!,
        if (rounds != null) 'rounds': rounds!,
        if (saltSeparator != null) 'saltSeparator': saltSeparator!,
        if (signerKey != null) 'signerKey': signerKey!,
      };
}

/// The IDP's certificate data to verify the signature in the SAMLResponse
/// issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificate {
  /// The x509 certificate
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate();

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(core.Map _json) {
    if (_json.containsKey('x509Certificate')) {
      x509Certificate = _json['x509Certificate'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML IdP (Identity Provider) configuration when the project acts as the
/// relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfig {
  /// IDP's public keys for verifying signature in the assertions.
  core.List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>? idpCertificates;

  /// Unique identifier for all SAML entities.
  core.String? idpEntityId;

  /// Indicates if outbounding SAMLRequest should be signed.
  core.bool? signRequest;

  /// URL to send Authentication request to.
  core.String? ssoUrl;

  GoogleCloudIdentitytoolkitAdminV2IdpConfig();

  GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(core.Map _json) {
    if (_json.containsKey('idpCertificates')) {
      idpCertificates = (_json['idpCertificates'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>((value) =>
              GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('idpEntityId')) {
      idpEntityId = _json['idpEntityId'] as core.String;
    }
    if (_json.containsKey('signRequest')) {
      signRequest = _json['signRequest'] as core.bool;
    }
    if (_json.containsKey('ssoUrl')) {
      ssoUrl = _json['ssoUrl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpCertificates != null)
          'idpCertificates':
              idpCertificates!.map((value) => value.toJson()).toList(),
        if (idpEntityId != null) 'idpEntityId': idpEntityId!,
        if (signRequest != null) 'signRequest': signRequest!,
        if (ssoUrl != null) 'ssoUrl': ssoUrl!,
      };
}

/// A pair of SAML RP-IDP configurations when the project acts as the relying
/// party.
class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig {
  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as
  /// the relying party.
  GoogleCloudIdentitytoolkitAdminV2IdpConfig? idpConfig;

  /// The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The SAML SP (Service Provider) configuration when the project acts as the
  /// relying party to receive and accept an authentication assertion issued by
  /// a SAML identity provider.
  GoogleCloudIdentitytoolkitAdminV2SpConfig? spConfig;

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig();

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('idpConfig')) {
      idpConfig = GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(
          _json['idpConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('spConfig')) {
      spConfig = GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(
          _json['spConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (idpConfig != null) 'idpConfig': idpConfig!.toJson(),
        if (name != null) 'name': name!,
        if (spConfig != null) 'spConfig': spConfig!.toJson(),
      };
}

/// Settings that the tenants will inherit from project level.
class GoogleCloudIdentitytoolkitAdminV2Inheritance {
  /// Whether to allow the tenant to inherit custom domains, email templates,
  /// and custom SMTP settings.
  ///
  /// If true, email sent from tenant will follow the project level email
  /// sending configurations. If false (by default), emails will go with the
  /// default settings with no customizations.
  core.bool? emailSendingConfig;

  GoogleCloudIdentitytoolkitAdminV2Inheritance();

  GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(core.Map _json) {
    if (_json.containsKey('emailSendingConfig')) {
      emailSendingConfig = _json['emailSendingConfig'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailSendingConfig != null)
          'emailSendingConfig': emailSendingConfig!,
      };
}

/// Response for DefaultSupportedIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>?
      defaultSupportedIdpConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse();

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('defaultSupportedIdpConfigs')) {
      defaultSupportedIdpConfigs = (_json['defaultSupportedIdpConfigs']
              as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>(
              (value) =>
                  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdpConfigs != null)
          'defaultSupportedIdpConfigs': defaultSupportedIdpConfigs!
              .map((value) => value.toJson())
              .toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListDefaultSupportedIdps
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>?
      defaultSupportedIdps;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse();

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('defaultSupportedIdps')) {
      defaultSupportedIdps = (_json['defaultSupportedIdps'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>((value) =>
              GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdps != null)
          'defaultSupportedIdps':
              defaultSupportedIdps!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListInboundSamlConfigs
class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>?
      inboundSamlConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse();

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('inboundSamlConfigs')) {
      inboundSamlConfigs = (_json['inboundSamlConfigs'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>((value) =>
              GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSamlConfigs != null)
          'inboundSamlConfigs':
              inboundSamlConfigs!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListOAuthIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>? oauthIdpConfigs;

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse();

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('oauthIdpConfigs')) {
      oauthIdpConfigs = (_json['oauthIdpConfigs'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>((value) =>
              GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (oauthIdpConfigs != null)
          'oauthIdpConfigs':
              oauthIdpConfigs!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for ListTenants.
class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse {
  /// The token to get the next page of results.
  core.String? nextPageToken;

  /// A list of tenants under the given agent project.
  core.List<GoogleCloudIdentitytoolkitAdminV2Tenant>? tenants;

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse();

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('tenants')) {
      tenants = (_json['tenants'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2Tenant>((value) =>
              GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenants != null)
          'tenants': tenants!.map((value) => value.toJson()).toList(),
      };
}

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig {
  /// A list of usable second factors for this project.
  core.List<core.String>? enabledProviders;

  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Illegal State, should not be used.
  /// - "DISABLED" : Multi-factor authentication cannot be used for this project
  /// - "ENABLED" : Multi-factor authentication can be used for this project
  /// - "MANDATORY" : Multi-factor authentication is required for this project.
  /// Users from this project must authenticate with the second factor.
  core.String? state;

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig();

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey('enabledProviders')) {
      enabledProviders = (_json['enabledProviders'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledProviders != null) 'enabledProviders': enabledProviders!,
        if (state != null) 'state': state!,
      };
}

/// Configuration options for authenticating with an OAuth IDP.
class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig {
  /// The client id of an OAuth client.
  core.String? clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  core.String? clientSecret;

  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// For OIDC Idps, the issuer identifier.
  core.String? issuer;

  /// The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The multiple response type to request for in the OAuth authorization flow.
  ///
  /// This can possibly be a combination of set bits (e.g. {id_token, token}).
  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType? responseType;

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig();

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(core.Map _json) {
    if (_json.containsKey('clientId')) {
      clientId = _json['clientId'] as core.String;
    }
    if (_json.containsKey('clientSecret')) {
      clientSecret = _json['clientSecret'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('issuer')) {
      issuer = _json['issuer'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('responseType')) {
      responseType =
          GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(
              _json['responseType'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (issuer != null) 'issuer': issuer!,
        if (name != null) 'name': name!,
        if (responseType != null) 'responseType': responseType!.toJson(),
      };
}

/// The multiple response type to request for in the OAuth authorization flow.
///
/// This can possibly be a combination of set bits (e.g. {id_token, token}).
class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  core.bool? code;

  /// If true, ID token is returned from IdP's authorization endpoint.
  core.bool? idToken;

  /// If true, access token is returned from IdP's authorization endpoint.
  core.bool? token;

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType();

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.bool;
    }
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.bool;
    }
    if (_json.containsKey('token')) {
      token = _json['token'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (idToken != null) 'idToken': idToken!,
        if (token != null) 'token': token!,
      };
}

/// The SP's certificate data for IDP to verify the SAMLRequest generated by the
/// SP.
class GoogleCloudIdentitytoolkitAdminV2SpCertificate {
  /// Timestamp of the cert expiration instance.
  core.String? expiresAt;

  /// Self-signed public certificate.
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2SpCertificate();

  GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(core.Map _json) {
    if (_json.containsKey('expiresAt')) {
      expiresAt = _json['expiresAt'] as core.String;
    }
    if (_json.containsKey('x509Certificate')) {
      x509Certificate = _json['x509Certificate'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresAt != null) 'expiresAt': expiresAt!,
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML SP (Service Provider) configuration when the project acts as the
/// relying party to receive and accept an authentication assertion issued by a
/// SAML identity provider.
class GoogleCloudIdentitytoolkitAdminV2SpConfig {
  /// Callback URI where responses from IDP are handled.
  core.String? callbackUri;

  /// Public certificates generated by the server to verify the signature in
  /// SAMLRequest in the SP-initiated flow.
  ///
  /// Output only.
  core.List<GoogleCloudIdentitytoolkitAdminV2SpCertificate>? spCertificates;

  /// Unique identifier for all SAML entities.
  core.String? spEntityId;

  GoogleCloudIdentitytoolkitAdminV2SpConfig();

  GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(core.Map _json) {
    if (_json.containsKey('callbackUri')) {
      callbackUri = _json['callbackUri'] as core.String;
    }
    if (_json.containsKey('spCertificates')) {
      spCertificates = (_json['spCertificates'] as core.List)
          .map<GoogleCloudIdentitytoolkitAdminV2SpCertificate>((value) =>
              GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('spEntityId')) {
      spEntityId = _json['spEntityId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackUri != null) 'callbackUri': callbackUri!,
        if (spCertificates != null)
          'spCertificates':
              spCertificates!.map((value) => value.toJson()).toList(),
        if (spEntityId != null) 'spEntityId': spEntityId!,
      };
}

/// A Tenant contains configuration for the tenant in a multi-tenant project.
class GoogleCloudIdentitytoolkitAdminV2Tenant {
  /// Whether to allow email/password user authentication.
  core.bool? allowPasswordSignup;

  /// Whether authentication is disabled for the tenant.
  ///
  /// If true, the users under the disabled tenant are not allowed to sign-in.
  /// Admins of the disabled tenant are not able to manage its users.
  core.bool? disableAuth;

  /// Display name of the tenant.
  core.String? displayName;

  /// Whether to enable anonymous user authentication.
  core.bool? enableAnonymousUser;

  /// Whether to enable email link user authentication.
  core.bool? enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon.
  ///
  /// This can only be displayed on Pantheon to avoid the sensitive information
  /// to get accidentally leaked. Only returned in GetTenant response to
  /// restrict reading of this information. Requires
  /// firebaseauth.configs.getHashConfig permission on the agent project for
  /// returning this field.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2HashConfig? hashConfig;

  /// Specify the settings that the tenant could inherit.
  GoogleCloudIdentitytoolkitAdminV2Inheritance? inheritance;

  /// The tenant-level configuration of MFA options.
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfaConfig;

  /// Resource name of a tenant.
  ///
  /// For example: "projects/{project-id}/tenants/{tenant-id}"
  ///
  /// Output only.
  core.String? name;

  /// A map of pairs that can be used for MFA.
  ///
  /// The phone number should be in E.164 format
  /// (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be
  /// added (error will be thrown once exceeded).
  core.Map<core.String, core.String>? testPhoneNumbers;

  GoogleCloudIdentitytoolkitAdminV2Tenant();

  GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(core.Map _json) {
    if (_json.containsKey('allowPasswordSignup')) {
      allowPasswordSignup = _json['allowPasswordSignup'] as core.bool;
    }
    if (_json.containsKey('disableAuth')) {
      disableAuth = _json['disableAuth'] as core.bool;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('enableAnonymousUser')) {
      enableAnonymousUser = _json['enableAnonymousUser'] as core.bool;
    }
    if (_json.containsKey('enableEmailLinkSignin')) {
      enableEmailLinkSignin = _json['enableEmailLinkSignin'] as core.bool;
    }
    if (_json.containsKey('hashConfig')) {
      hashConfig = GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
          _json['hashConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inheritance')) {
      inheritance = GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(
          _json['inheritance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mfaConfig')) {
      mfaConfig =
          GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
              _json['mfaConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('testPhoneNumbers')) {
      testPhoneNumbers =
          (_json['testPhoneNumbers'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPasswordSignup != null)
          'allowPasswordSignup': allowPasswordSignup!,
        if (disableAuth != null) 'disableAuth': disableAuth!,
        if (displayName != null) 'displayName': displayName!,
        if (enableAnonymousUser != null)
          'enableAnonymousUser': enableAnonymousUser!,
        if (enableEmailLinkSignin != null)
          'enableEmailLinkSignin': enableEmailLinkSignin!,
        if (hashConfig != null) 'hashConfig': hashConfig!.toJson(),
        if (inheritance != null) 'inheritance': inheritance!.toJson(),
        if (mfaConfig != null) 'mfaConfig': mfaConfig!.toJson(),
        if (name != null) 'name': name!,
        if (testPhoneNumbers != null) 'testPhoneNumbers': testPhoneNumbers!,
      };
}

/// The information required to auto-retrieve an SMS.
class GoogleCloudIdentitytoolkitV2AutoRetrievalInfo {
  /// The Android app's signature hash for Google Play Service's SMS Retriever
  /// API.
  core.String? appSignatureHash;

  GoogleCloudIdentitytoolkitV2AutoRetrievalInfo();

  GoogleCloudIdentitytoolkitV2AutoRetrievalInfo.fromJson(core.Map _json) {
    if (_json.containsKey('appSignatureHash')) {
      appSignatureHash = _json['appSignatureHash'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (appSignatureHash != null) 'appSignatureHash': appSignatureHash!,
      };
}

/// Finishes enrolling a second factor for the user.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest {
  /// Display name which is entered by users to distinguish between different
  /// second factors with same type or different type.
  core.String? displayName;

  /// ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest();

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('phoneVerificationInfo')) {
      phoneVerificationInfo =
          GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo.fromJson(
              _json['phoneVerificationInfo']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tenantId')) {
      tenantId = _json['tenantId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (idToken != null) 'idToken': idToken!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!.toJson(),
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// FinalizeMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse {
  /// ID token updated to reflect MFA enrollment.
  core.String? idToken;
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token updated to reflect MFA enrollment.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse();

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('phoneAuthInfo')) {
      phoneAuthInfo =
          GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo.fromJson(
              _json['phoneAuthInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('refreshToken')) {
      refreshToken = _json['refreshToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!.toJson(),
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Phone Verification info for a FinalizeMfa request.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Uses for "instant" phone number verification though GmsCore.
  core.String? androidVerificationProof;

  /// User-entered verification code.
  core.String? code;

  /// Required if Android verification proof is presented.
  core.String? phoneNumber;

  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo();

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('androidVerificationProof')) {
      androidVerificationProof =
          _json['androidVerificationProof'] as core.String;
    }
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
    if (_json.containsKey('sessionInfo')) {
      sessionInfo = _json['sessionInfo'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (code != null) 'code': code!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Phone Verification info for a FinalizeMfa response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo {
  /// Android only.
  ///
  /// Long-lived replacement for valid code tied to android device.
  core.String? androidVerificationProof;

  /// Android only.
  ///
  /// Expiration time of verification proof in seconds.
  core.String? androidVerificationProofExpireTime;

  /// For Android verification proof.
  core.String? phoneNumber;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo();

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('androidVerificationProof')) {
      androidVerificationProof =
          _json['androidVerificationProof'] as core.String;
    }
    if (_json.containsKey('androidVerificationProofExpireTime')) {
      androidVerificationProofExpireTime =
          _json['androidVerificationProofExpireTime'] as core.String;
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (androidVerificationProofExpireTime != null)
          'androidVerificationProofExpireTime':
              androidVerificationProofExpireTime!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Finalizes sign-in by verifying MFA challenge.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest {
  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Proof of completion of the SMS based MFA challenge.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest();

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('mfaPendingCredential')) {
      mfaPendingCredential = _json['mfaPendingCredential'] as core.String;
    }
    if (_json.containsKey('phoneVerificationInfo')) {
      phoneVerificationInfo =
          GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo.fromJson(
              _json['phoneVerificationInfo']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tenantId')) {
      tenantId = _json['tenantId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!.toJson(),
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// FinalizeMfaSignIn response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse {
  /// ID token for the authenticated user.
  core.String? idToken;

  /// Extra phone auth info, including android verification proof.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse();

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('phoneAuthInfo')) {
      phoneAuthInfo =
          GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo.fromJson(
              _json['phoneAuthInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('refreshToken')) {
      refreshToken = _json['refreshToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!.toJson(),
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Sends MFA enrollment verification SMS for a user.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneEnrollmentInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest();

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('phoneEnrollmentInfo')) {
      phoneEnrollmentInfo =
          GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
              _json['phoneEnrollmentInfo']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tenantId')) {
      tenantId = _json['tenantId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneEnrollmentInfo != null)
          'phoneEnrollmentInfo': phoneEnrollmentInfo!.toJson(),
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// StartMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse {
  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneSessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse();

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('phoneSessionInfo')) {
      phoneSessionInfo =
          GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
              _json['phoneSessionInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneSessionInfo != null)
          'phoneSessionInfo': phoneSessionInfo!.toJson(),
      };
}

/// App Verification info for a StartMfa request.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Used by Google Play Services to identify the app for auto-retrieval.
  GoogleCloudIdentitytoolkitV2AutoRetrievalInfo? autoRetrievalInfo;

  /// iOS only.
  ///
  /// Receipt of successful app token validation with APNS.
  core.String? iosReceipt;

  /// iOS only.
  ///
  /// Secret delivered to iOS app via APNS.
  core.String? iosSecret;

  /// Required for enrollment.
  ///
  /// Phone number to be enrolled as MFA.
  core.String? phoneNumber;

  /// Web only.
  ///
  /// Recaptcha solution.
  core.String? recaptchaToken;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token. A
  /// SafetyNet Token can be generated via the
  /// [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html),
  /// with the Base64 encoding of the `phone_number` field as the nonce.
  core.String? safetyNetToken;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo();

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('autoRetrievalInfo')) {
      autoRetrievalInfo =
          GoogleCloudIdentitytoolkitV2AutoRetrievalInfo.fromJson(
              _json['autoRetrievalInfo']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('iosReceipt')) {
      iosReceipt = _json['iosReceipt'] as core.String;
    }
    if (_json.containsKey('iosSecret')) {
      iosSecret = _json['iosSecret'] as core.String;
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
    if (_json.containsKey('recaptchaToken')) {
      recaptchaToken = _json['recaptchaToken'] as core.String;
    }
    if (_json.containsKey('safetyNetToken')) {
      safetyNetToken = _json['safetyNetToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRetrievalInfo != null)
          'autoRetrievalInfo': autoRetrievalInfo!.toJson(),
        if (iosReceipt != null) 'iosReceipt': iosReceipt!,
        if (iosSecret != null) 'iosSecret': iosSecret!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
      };
}

/// Phone Verification info for a StartMfa response.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo {
  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo();

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('sessionInfo')) {
      sessionInfo = _json['sessionInfo'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Starts multi-factor sign-in by sending the multi-factor auth challenge.
class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest {
  /// MFA enrollment id from the user's list of current MFA enrollments.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneSignInInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest();

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest.fromJson(core.Map _json) {
    if (_json.containsKey('mfaEnrollmentId')) {
      mfaEnrollmentId = _json['mfaEnrollmentId'] as core.String;
    }
    if (_json.containsKey('mfaPendingCredential')) {
      mfaPendingCredential = _json['mfaPendingCredential'] as core.String;
    }
    if (_json.containsKey('phoneSignInInfo')) {
      phoneSignInInfo =
          GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
              _json['phoneSignInInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tenantId')) {
      tenantId = _json['tenantId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneSignInInfo != null)
          'phoneSignInInfo': phoneSignInInfo!.toJson(),
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// StartMfaSignIn response.
class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse {
  /// MultiFactor sign-in session information specific to SMS-type second
  /// factors.
  ///
  /// Along with the one-time code retrieved from the sent SMS, the contents of
  /// this session information should be passed to FinalizeMfaSignIn to complete
  /// the sign in.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneResponseInfo;

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse();

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(core.Map _json) {
    if (_json.containsKey('phoneResponseInfo')) {
      phoneResponseInfo =
          GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
              _json['phoneResponseInfo']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneResponseInfo != null)
          'phoneResponseInfo': phoneResponseInfo!.toJson(),
      };
}

/// Withdraws MFA.
class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// MFA enrollment id from a current MFA enrollment.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// The ID of the Identity Platform tenant that the user unenrolling MFA
  /// belongs to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest();

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest.fromJson(core.Map _json) {
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('mfaEnrollmentId')) {
      mfaEnrollmentId = _json['mfaEnrollmentId'] as core.String;
    }
    if (_json.containsKey('tenantId')) {
      tenantId = _json['tenantId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Withdraws MultiFactorAuth response.
class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse {
  /// ID token updated to reflect removal of the second factor.
  core.String? idToken;

  /// Refresh token updated to reflect removal of the second factor.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse();

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(core.Map _json) {
    if (_json.containsKey('idToken')) {
      idToken = _json['idToken'] as core.String;
    }
    if (_json.containsKey('refreshToken')) {
      refreshToken = _json['refreshToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig();

  GoogleIamV1AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<GoogleIamV1AuditLogConfig>((value) =>
              GoogleIamV1AuditLogConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs!.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class GoogleIamV1AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  GoogleIamV1AuditLogConfig();

  GoogleIamV1AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
}

/// Associates `members` with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  GoogleIamV1Binding();

  GoogleIamV1Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = GoogleTypeExpr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message for `GetIamPolicy` method.
class GoogleIamV1GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GoogleIamV1GetPolicyOptions? options;

  GoogleIamV1GetIamPolicyRequest();

  GoogleIamV1GetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('options')) {
      options = GoogleIamV1GetPolicyOptions.fromJson(
          _json['options'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!.toJson(),
      };
}

/// Encapsulates settings provided to GetIamPolicy.
class GoogleIamV1GetPolicyOptions {
  /// The policy format version to be returned.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional bindings must specify
  /// version 3. Policies without any conditional bindings may specify any valid
  /// value or leave the field unset. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  GoogleIamV1GetPolicyOptions();

  GoogleIamV1GetPolicyOptions.fromJson(core.Map _json) {
    if (_json.containsKey('requestedPolicyVersion')) {
      requestedPolicyVersion = _json['requestedPolicyVersion'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<GoogleIamV1Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy();

  GoogleIamV1Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<GoogleIamV1AuditConfig>((value) =>
              GoogleIamV1AuditConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<GoogleIamV1Binding>((value) => GoogleIamV1Binding.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs!.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest();

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = GoogleIamV1Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  GoogleIamV1TestIamPermissionsRequest();

  GoogleIamV1TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  GoogleIamV1TestIamPermissionsResponse();

  GoogleIamV1TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class GoogleTypeExpr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  GoogleTypeExpr();

  GoogleTypeExpr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}
