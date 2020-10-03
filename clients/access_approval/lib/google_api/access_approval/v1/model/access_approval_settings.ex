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

defmodule GoogleApi.AccessApproval.V1.Model.AccessApprovalSettings do
  @moduledoc """
  Settings on a Project/Folder/Organization related to Access Approval.

  ## Attributes

  *   `enrolledAncestor` (*type:* `boolean()`, *default:* `nil`) - Output only. This field is read only (not settable via UpdateAccessAccessApprovalSettings method). If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project or Folder (this field will always be unset for the organization since organizations do not have ancestors).
  *   `enrolledServices` (*type:* `list(GoogleApi.AccessApproval.V1.Model.EnrolledService.t)`, *default:* `nil`) - A list of Google Cloud Services for which the given resource has Access Approval enrolled. Access requests for the resource given by name against any of these services contained here will be required to have explicit approval. If name refers to an organization, enrollment can be done for individual services. If name refers to a folder or project, enrollment can only be done on an all or nothing basis. If a cloud_product is repeated in this list, the first entry will be honored and all following entries will be discarded. A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the settings. Format is one of: * "projects/{project}/accessApprovalSettings" * "folders/{folder}/accessApprovalSettings" * "organizations/{organization}/accessApprovalSettings"
  *   `notificationEmails` (*type:* `list(String.t)`, *default:* `nil`) - A list of email addresses to which notifications relating to approval requests should be sent. Notifications relating to a resource will be sent to all emails in the settings of ancestor resources of that resource. A maximum of 50 email addresses are allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enrolledAncestor => boolean(),
          :enrolledServices => list(GoogleApi.AccessApproval.V1.Model.EnrolledService.t()),
          :name => String.t(),
          :notificationEmails => list(String.t())
        }

  field(:enrolledAncestor)
  field(:enrolledServices, as: GoogleApi.AccessApproval.V1.Model.EnrolledService, type: :list)
  field(:name)
  field(:notificationEmails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AccessApproval.V1.Model.AccessApprovalSettings do
  def decode(value, options) do
    GoogleApi.AccessApproval.V1.Model.AccessApprovalSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessApproval.V1.Model.AccessApprovalSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
