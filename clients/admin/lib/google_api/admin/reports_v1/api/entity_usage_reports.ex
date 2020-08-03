# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Reports_v1.Api.EntityUsageReports do
  @moduledoc """
  API calls for all endpoints tagged `EntityUsageReports`.
  """

  alias GoogleApi.Admin.Reports_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a report which is a collection of properties and statistics for entities used by users within the account. For more information, see the Entities Usage Report guide. For more information about the entities report's parameters, see the Entities Usage parameters reference guides.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Reports_v1.Connection.t`) - Connection to server
  *   `entity_type` (*type:* `String.t`) - Represents the type of entity for the report.
  *   `entity_key` (*type:* `String.t`) - Represents the key of the object to filter the data with.
  *   `date` (*type:* `String.t`) - Represents the date the usage occurred. The timestamp is in the ISO 8601 format, yyyy-mm-dd. We recommend you use your account's time zone for this.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:customerId` (*type:* `String.t`) - The unique ID of the customer to retrieve data for.
      *   `:filters` (*type:* `String.t`) - The filters query string is a comma-separated list of an application's event parameters where the parameter's value is manipulated by a relational operator. The filters query string includes the name of the application whose usage is returned in the report. The application values for the Entities usage report include accounts, docs, and gmail.
          Filters are in the form [application name]:[parameter name][relational operator][parameter value],....

          In this example, the <> 'not equal to' operator is URL-encoded in the request's query string (%3C%3E):
          GET https://www.googleapis.com/admin/reports/v1/usage/gplus_communities/all/dates/2017-12-01 ?parameters=gplus:community_name,gplus:num_total_members &filters=gplus:num_total_members>0


          The relational operators include:  
          - == - 'equal to'. 
          - <> - 'not equal to'. It is URL-encoded (%3C%3E). 
          - < - 'less than'. It is URL-encoded (%3C). 
          - <= - 'less than or equal to'. It is URL-encoded (%3C=). 
          - > - 'greater than'. It is URL-encoded (%3E). 
          - >= - 'greater than or equal to'. It is URL-encoded (%3E=).  Filters can only be applied to numeric parameters.
      *   `:maxResults` (*type:* `integer()`) - Determines how many activity records are shown on each response page. For example, if the request sets maxResults=1 and the report has two activities, the report has two pages. The response's nextPageToken property has the token to the second page.
      *   `:pageToken` (*type:* `String.t`) - Token to specify next page. A report with multiple pages has a nextPageToken property in the response. In your follow-on request getting the next page of the report, enter the nextPageToken value in the pageToken query string.
      *   `:parameters` (*type:* `String.t`) - The parameters query string is a comma-separated list of event parameters that refine a report's results. The parameter is associated with a specific application. The application values for the Entities usage report are only gplus.
          A parameter query string is in the CSV form of [app_name1:param_name1], [app_name2:param_name2]....
          Note: The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter.
          In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters.

          An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Reports_v1.Model.UsageReports{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reports_entity_usage_reports_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Admin.Reports_v1.Model.UsageReports.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def reports_entity_usage_reports_get(
        connection,
        entity_type,
        entity_key,
        date,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :customerId => :query,
      :filters => :query,
      :maxResults => :query,
      :pageToken => :query,
      :parameters => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/admin/reports/v1/usage/{entityType}/{entityKey}/dates/{date}", %{
        "entityType" => URI.encode(entity_type, &URI.char_unreserved?/1),
        "entityKey" => URI.encode(entity_key, &URI.char_unreserved?/1),
        "date" => URI.encode(date, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.UsageReports{}])
  end
end
