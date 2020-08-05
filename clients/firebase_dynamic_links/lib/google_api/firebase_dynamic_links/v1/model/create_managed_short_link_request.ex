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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.CreateManagedShortLinkRequest do
  @moduledoc """
  Request to create a managed Short Dynamic Link.

  ## Attributes

  *   `dynamicLinkInfo` (*type:* `GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo.t`, *default:* `nil`) - Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  *   `longDynamicLink` (*type:* `String.t`, *default:* `nil`) - Full long Dynamic Link URL with desired query parameters specified. For example, "https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample", [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Link name to associate with the link. It's used for marketer to identify manually-created links in the Firebase console (https://console.firebase.google.com/). Links must be named to be tracked.
  *   `sdkVersion` (*type:* `String.t`, *default:* `nil`) - Google SDK version. Version takes the form "$major.$minor.$patch"
  *   `suffix` (*type:* `GoogleApi.FirebaseDynamicLinks.V1.Model.Suffix.t`, *default:* `nil`) - Short Dynamic Link suffix. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicLinkInfo => GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo.t(),
          :longDynamicLink => String.t(),
          :name => String.t(),
          :sdkVersion => String.t(),
          :suffix => GoogleApi.FirebaseDynamicLinks.V1.Model.Suffix.t()
        }

  field(:dynamicLinkInfo, as: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo)
  field(:longDynamicLink)
  field(:name)
  field(:sdkVersion)
  field(:suffix, as: GoogleApi.FirebaseDynamicLinks.V1.Model.Suffix)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateManagedShortLinkRequest do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.CreateManagedShortLinkRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateManagedShortLinkRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
