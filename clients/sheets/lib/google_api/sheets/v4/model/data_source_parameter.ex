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

defmodule GoogleApi.Sheets.V4.Model.DataSourceParameter do
  @moduledoc """
  A parameter in a data source's query. The parameter allows the user to pass in values from the spreadsheet into a query.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Named parameter. Must be a legitimate identifier for the DataSource that supports it. For example, [BigQuery identifier](https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical#identifiers).
  *   `namedRangeId` (*type:* `String.t`, *default:* `nil`) - ID of a NamedRange. Its size must be 1x1.
  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - A range that contains the value of the parameter. Its size must be 1x1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :namedRangeId => String.t(),
          :range => GoogleApi.Sheets.V4.Model.GridRange.t()
        }

  field(:name)
  field(:namedRangeId)
  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DataSourceParameter do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DataSourceParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DataSourceParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
