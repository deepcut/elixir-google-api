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

defmodule GoogleApi.Content.V21.Model.OrderLineItemShippingDetails do
  @moduledoc """


  ## Attributes

  *   `deliverByDate` (*type:* `String.t`, *default:* `nil`) - The delivery by date, in ISO 8601 format.
  *   `method` (*type:* `GoogleApi.Content.V21.Model.OrderLineItemShippingDetailsMethod.t`, *default:* `nil`) - Details of the shipping method.
  *   `shipByDate` (*type:* `String.t`, *default:* `nil`) - The ship by date, in ISO 8601 format.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of shipment. Indicates whether deliveryDetails or pickupDetails is applicable for this shipment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deliverByDate => String.t(),
          :method => GoogleApi.Content.V21.Model.OrderLineItemShippingDetailsMethod.t(),
          :shipByDate => String.t(),
          :type => String.t()
        }

  field(:deliverByDate)
  field(:method, as: GoogleApi.Content.V21.Model.OrderLineItemShippingDetailsMethod)
  field(:shipByDate)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderLineItemShippingDetails do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderLineItemShippingDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderLineItemShippingDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end