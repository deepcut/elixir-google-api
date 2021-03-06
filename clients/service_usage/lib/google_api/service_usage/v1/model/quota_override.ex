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

defmodule GoogleApi.ServiceUsage.V1.Model.QuotaOverride do
  @moduledoc """
  A quota override

  ## Attributes

  *   `adminOverrideAncestor` (*type:* `String.t`, *default:* `nil`) - The resource name of the ancestor that requested the override. For example: "organizations/12345" or "folders/67890". Used by admin overrides only.
  *   `dimensions` (*type:* `map()`, *default:* `nil`) - If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit. For example, an override on a limit with the unit 1/{project}/{region} could contain an entry with the key "region" and the value "us-east-1"; the override is only applied to quota consumed in that region. This map has the following restrictions: * Keys that are not defined in the limit's unit are not valid keys. Any string appearing in {brackets} in the unit (besides {project} or {user}) is a defined key. * "project" is not a valid key; the project is already specified in the parent resource name. * "user" is not a valid key; the API does not support quota overrides that apply only to a specific user. * If "region" appears as a key, its value must be a valid Cloud region. * If "zone" appears as a key, its value must be a valid Cloud zone. * If any valid key other than "region" or "zone" appears in the map, then all valid keys other than "region" or "zone" must also appear in the map.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - The name of the metric to which this override applies. An example name would be: `compute.googleapis.com/cpus`
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the override. This name is generated by the server when the override is created. Example names would be: `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/adminOverrides/4a3f2c1d` `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/consumerOverrides/4a3f2c1d` The resource name is intended to be opaque and should not be parsed for its component strings, since its representation could change in the future.
  *   `overrideValue` (*type:* `String.t`, *default:* `nil`) - The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  *   `unit` (*type:* `String.t`, *default:* `nil`) - The limit unit of the limit to which this override applies. An example unit would be: `1/{project}/{region}` Note that `{project}` and `{region}` are not placeholders in this example; the literal characters `{` and `}` occur in the string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminOverrideAncestor => String.t(),
          :dimensions => map(),
          :metric => String.t(),
          :name => String.t(),
          :overrideValue => String.t(),
          :unit => String.t()
        }

  field(:adminOverrideAncestor)
  field(:dimensions, type: :map)
  field(:metric)
  field(:name)
  field(:overrideValue)
  field(:unit)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.QuotaOverride do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.QuotaOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.QuotaOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
