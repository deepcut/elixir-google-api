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

defmodule GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest do
  @moduledoc """
  Deletes bullets from all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.

  ## Attributes

  *   `range` (*type:* `GoogleApi.Docs.V1.Model.Range.t`, *default:* `nil`) - The range to delete bullets from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => GoogleApi.Docs.V1.Model.Range.t()
        }

  field(:range, as: GoogleApi.Docs.V1.Model.Range)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.DeleteParagraphBulletsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
