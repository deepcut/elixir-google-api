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

defmodule GoogleApi.ServiceUsage.V1.Model.BatchEnableServicesRequest do
  @moduledoc """
  Request message for the `BatchEnableServices` method.

  ## Attributes

  *   `serviceIds` (*type:* `list(String.t)`, *default:* `nil`) - The identifiers of the services to enable on the project. A valid identifier would be: serviceusage.googleapis.com Enabling services requires that each service is public or is shared with the user enabling the service. A single request can enable a maximum of 20 services at a time. If more than 20 services are specified, the request will fail, and no state changes will occur.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceIds => list(String.t())
        }

  field(:serviceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.BatchEnableServicesRequest do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.BatchEnableServicesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.BatchEnableServicesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
