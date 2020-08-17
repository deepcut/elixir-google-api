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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource do
  @moduledoc """
  The inline source for the input config for ImportUserEvents method.

  ## Attributes

  *   `userEvents` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t)`, *default:* `nil`) - Optional. A list of user events to import. Recommended max of 10k items.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :userEvents =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent.t()
            )
        }

  field(:userEvents,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEvent,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
