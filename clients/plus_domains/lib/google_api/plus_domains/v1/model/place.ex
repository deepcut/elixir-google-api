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

defmodule GoogleApi.PlusDomains.V1.Model.Place do
  @moduledoc """


  ## Attributes

  *   `address` (*type:* `GoogleApi.PlusDomains.V1.Model.PlaceAddress.t`, *default:* `nil`) - The physical address of the place.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the place.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The id of the place.
  *   `kind` (*type:* `String.t`, *default:* `plus#place`) - Identifies this resource as a place. Value: "plus#place".
  *   `position` (*type:* `GoogleApi.PlusDomains.V1.Model.PlacePosition.t`, *default:* `nil`) - The position of the place.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.PlusDomains.V1.Model.PlaceAddress.t(),
          :displayName => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :position => GoogleApi.PlusDomains.V1.Model.PlacePosition.t()
        }

  field(:address, as: GoogleApi.PlusDomains.V1.Model.PlaceAddress)
  field(:displayName)
  field(:id)
  field(:kind)
  field(:position, as: GoogleApi.PlusDomains.V1.Model.PlacePosition)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.Place do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.Place.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.Place do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
