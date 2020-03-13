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

defmodule GoogleApi.CloudSearch.V1.Model.PropertyDisplayOptions do
  @moduledoc """
  The display options for a property.

  ## Attributes

  *   `displayLabel` (*type:* `String.t`, *default:* `nil`) - The user friendly label for the property that is used if the property
      is specified to be displayed in ObjectDisplayOptions. If provided, the
      display label is shown in front of the property values when the property is
      part of the object display options. For example, if the property value is
      '1', the value by itself may not be useful context for the user. If the
      display name given was 'priority', then the user sees 'priority : 1' in
      the search results which provides clear context to search users. This is
      OPTIONAL; if not given, only the property values are displayed.
      The maximum length is 32 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayLabel => String.t()
        }

  field(:displayLabel)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PropertyDisplayOptions do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PropertyDisplayOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PropertyDisplayOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
