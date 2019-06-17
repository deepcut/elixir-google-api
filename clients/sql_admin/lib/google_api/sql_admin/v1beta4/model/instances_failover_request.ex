# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.InstancesFailoverRequest do
  @moduledoc """
  Instance failover request.

  ## Attributes

  - failoverContext (GoogleApi.SQLAdmin.V1beta4.Model.FailoverContext.t): Failover Context. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failoverContext => GoogleApi.SQLAdmin.V1beta4.Model.FailoverContext.t()
        }

  field(:failoverContext, as: GoogleApi.SQLAdmin.V1beta4.Model.FailoverContext)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.InstancesFailoverRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.InstancesFailoverRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.InstancesFailoverRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
