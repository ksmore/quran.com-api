# frozen_string_literal: true

class WordTranslation < ApplicationRecord
  include Resourceable

  belongs_to :word
  belongs_to :language
end
