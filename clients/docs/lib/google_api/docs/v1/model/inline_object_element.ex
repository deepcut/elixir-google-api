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

defmodule GoogleApi.Docs.V1.Model.InlineObjectElement do
  @moduledoc """
  A ParagraphElement that contains an InlineObject.

  ## Attributes

  *   `inlineObjectId` (*type:* `String.t`, *default:* `nil`) - The ID of the InlineObject this element contains.
  *   `suggestedDeletionIds` (*type:* `list(String.t)`, *default:* `nil`) - The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
  *   `suggestedInsertionIds` (*type:* `list(String.t)`, *default:* `nil`) - The suggested insertion IDs. An InlineObjectElement may have multiple insertion IDs if it is a nested suggested change. If empty, then this is not a suggested insertion.
  *   `suggestedTextStyleChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedTextStyle.t}`, *default:* `nil`) - The suggested text style changes to this InlineObject, keyed by suggestion ID.
  *   `textStyle` (*type:* `GoogleApi.Docs.V1.Model.TextStyle.t`, *default:* `nil`) - The text style of this InlineObjectElement. Similar to text content, like text runs and footnote references, the text style of an inline object element can affect content layout as well as the styling of text inserted adjacent to it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inlineObjectId => String.t(),
          :suggestedDeletionIds => list(String.t()),
          :suggestedInsertionIds => list(String.t()),
          :suggestedTextStyleChanges => %{
            optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedTextStyle.t()
          },
          :textStyle => GoogleApi.Docs.V1.Model.TextStyle.t()
        }

  field(:inlineObjectId)
  field(:suggestedDeletionIds, type: :list)
  field(:suggestedInsertionIds, type: :list)
  field(:suggestedTextStyleChanges, as: GoogleApi.Docs.V1.Model.SuggestedTextStyle, type: :map)
  field(:textStyle, as: GoogleApi.Docs.V1.Model.TextStyle)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.InlineObjectElement do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.InlineObjectElement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.InlineObjectElement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
