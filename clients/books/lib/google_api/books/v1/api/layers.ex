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

defmodule GoogleApi.Books.V1.Api.Layers do
  @moduledoc """
  API calls for all endpoints tagged `Layers`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets the layer summary for a volume.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve layers for.
  *   `summary_id` (*type:* `String.t`) - The ID for the layer to get the summary for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:contentVersion` (*type:* `String.t`) - The content version for the requested volume.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Layersummary{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Layersummary.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_get(connection, volume_id, summary_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :contentVersion => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/layersummary/{summaryId}", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1),
        "summaryId" => URI.encode(summary_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Layersummary{}])
  end

  @doc """
  List the layer summaries for a volume.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve layers for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:contentVersion` (*type:* `String.t`) - The content version for the requested volume.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous page.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Layersummaries{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Layersummaries.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_list(connection, volume_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :contentVersion => :query,
      :maxResults => :query,
      :pageToken => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/layersummary", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Layersummaries{}])
  end

  @doc """
  Gets the annotation data.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve annotations for.
  *   `layer_id` (*type:* `String.t`) - The ID for the layer to get the annotations.
  *   `annotation_data_id` (*type:* `String.t`) - The ID of the annotation data to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:allowWebDefinitions` (*type:* `boolean()`) - For the dictionary layer. Whether or not to allow web definitions.
      *   `:contentVersion` (*type:* `String.t`) - The content version for the volume you are trying to retrieve.
      *   `:h` (*type:* `integer()`) - The requested pixel height for any images. If height is provided width must
          also be provided.
      *   `:locale` (*type:* `String.t`) - The locale information for the data. ISO-639-1 language and ISO-3166-1
          country code. Ex: 'en_US'.
      *   `:scale` (*type:* `integer()`) - The requested scale for the image.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:w` (*type:* `integer()`) - The requested pixel width for any images. If width is provided height must
          also be provided.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.DictionaryAnnotationdata{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_annotation_data_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Books.V1.Model.DictionaryAnnotationdata.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_annotation_data_get(
        connection,
        volume_id,
        layer_id,
        annotation_data_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :allowWebDefinitions => :query,
      :contentVersion => :query,
      :h => :query,
      :locale => :query,
      :scale => :query,
      :source => :query,
      :w => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1),
        "layerId" => URI.encode(layer_id, &URI.char_unreserved?/1),
        "annotationDataId" => URI.encode(annotation_data_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.DictionaryAnnotationdata{}])
  end

  @doc """
  Gets the annotation data for a volume and layer.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve annotation data for.
  *   `layer_id` (*type:* `String.t`) - The ID for the layer to get the annotation data.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:annotationDataId` (*type:* `list(String.t)`) - The list of Annotation Data Ids to retrieve. Pagination is ignored if this
          is set.
      *   `:contentVersion` (*type:* `String.t`) - The content version for the requested volume.
      *   `:h` (*type:* `integer()`) - The requested pixel height for any images. If height is provided width must
          also be provided.
      *   `:locale` (*type:* `String.t`) - The locale information for the data. ISO-639-1 language and ISO-3166-1
          country code. Ex: 'en_US'.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous page.
      *   `:scale` (*type:* `integer()`) - The requested scale for the image.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:updatedMax` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated prior to this timestamp
          (exclusive).
      *   `:updatedMin` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated since this timestamp
          (inclusive).
      *   `:w` (*type:* `integer()`) - The requested pixel width for any images. If width is provided height must
          also be provided.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Annotationsdata{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_annotation_data_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Books.V1.Model.Annotationsdata.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_annotation_data_list(
        connection,
        volume_id,
        layer_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :annotationDataId => :query,
      :contentVersion => :query,
      :h => :query,
      :locale => :query,
      :maxResults => :query,
      :pageToken => :query,
      :scale => :query,
      :source => :query,
      :updatedMax => :query,
      :updatedMin => :query,
      :w => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/layers/{layerId}/data", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1),
        "layerId" => URI.encode(layer_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Annotationsdata{}])
  end

  @doc """
  Gets the volume annotation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve annotations for.
  *   `layer_id` (*type:* `String.t`) - The ID for the layer to get the annotations.
  *   `annotation_id` (*type:* `String.t`) - The ID of the volume annotation to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:locale` (*type:* `String.t`) - The locale information for the data. ISO-639-1 language and ISO-3166-1
          country code. Ex: 'en_US'.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumeannotation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_volume_annotations_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Books.V1.Model.Volumeannotation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_volume_annotations_get(
        connection,
        volume_id,
        layer_id,
        annotation_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :locale => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/books/v1/volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}",
        %{
          "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1),
          "layerId" => URI.encode(layer_id, &URI.char_unreserved?/1),
          "annotationId" => URI.encode(annotation_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumeannotation{}])
  end

  @doc """
  Gets the volume annotations for a volume and layer.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - The volume to retrieve annotations for.
  *   `layer_id` (*type:* `String.t`) - The ID for the layer to get the annotations.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:contentVersion` (*type:* `String.t`) - The content version for the requested volume.
      *   `:endOffset` (*type:* `String.t`) - The end offset to end retrieving data from.
      *   `:endPosition` (*type:* `String.t`) - The end position to end retrieving data from.
      *   `:locale` (*type:* `String.t`) - The locale information for the data. ISO-639-1 language and ISO-3166-1
          country code. Ex: 'en_US'.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous page.
      *   `:showDeleted` (*type:* `boolean()`) - Set to true to return deleted annotations. updatedMin must be in the
          request to use this. Defaults to false.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startOffset` (*type:* `String.t`) - The start offset to start retrieving data from.
      *   `:startPosition` (*type:* `String.t`) - The start position to start retrieving data from.
      *   `:updatedMax` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated prior to this timestamp
          (exclusive).
      *   `:updatedMin` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated since this timestamp
          (inclusive).
      *   `:volumeAnnotationsVersion` (*type:* `String.t`) - The version of the volume annotations that you are requesting.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumeannotations{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_layers_volume_annotations_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Books.V1.Model.Volumeannotations.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_layers_volume_annotations_list(
        connection,
        volume_id,
        layer_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :contentVersion => :query,
      :endOffset => :query,
      :endPosition => :query,
      :locale => :query,
      :maxResults => :query,
      :pageToken => :query,
      :showDeleted => :query,
      :source => :query,
      :startOffset => :query,
      :startPosition => :query,
      :updatedMax => :query,
      :updatedMin => :query,
      :volumeAnnotationsVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/volumes/{volumeId}/layers/{layerId}", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1),
        "layerId" => URI.encode(layer_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumeannotations{}])
  end
end
