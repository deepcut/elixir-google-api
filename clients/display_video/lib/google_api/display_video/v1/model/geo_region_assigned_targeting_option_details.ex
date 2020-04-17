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

defmodule GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails do
  @moduledoc """
  Details for assigned geographic region targeting option. This will be
  populated in the details field of an AssignedTargetingOption when
  targeting_type is
  `TARGETING_TYPE_GEO_REGION`.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the geographic region (e.g., "Ontario, Canada").
  *   `geoRegionType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of geographic region targeting.
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Indicates if this option is being negatively targeted.
  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Required. The targeting_option_id of a
      TargetingOption of type `TARGETING_TYPE_GEO_REGION`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :geoRegionType => String.t(),
          :negative => boolean(),
          :targetingOptionId => String.t()
        }

  field(:displayName)
  field(:geoRegionType)
  field(:negative)
  field(:targetingOptionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end