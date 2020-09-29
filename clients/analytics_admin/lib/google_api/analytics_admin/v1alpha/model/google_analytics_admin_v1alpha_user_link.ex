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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaUserLink do
  @moduledoc """
  A resource message representing a user's permissions on an Account or Property resource.

  ## Attributes

  *   `directRoles` (*type:* `list(String.t)`, *default:* `nil`) - Roles directly assigned to this user for this account or property. Valid values: predefinedRoles/read predefinedRoles/collaborate predefinedRoles/edit predefinedRoles/manage-users Excludes roles that are inherited from a higher-level entity, group, or organization admin role. A UserLink that is updated to have an empty list of direct_roles will be deleted.
  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - Email address of the user to link
  *   `name` (*type:* `String.t`, *default:* `nil`) - Example format: properties/1234/userLinks/5678
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :directRoles => list(String.t()),
          :emailAddress => String.t(),
          :name => String.t()
        }

  field(:directRoles, type: :list)
  field(:emailAddress)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaUserLink do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaUserLink.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaUserLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end