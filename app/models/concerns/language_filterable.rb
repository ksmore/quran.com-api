# frozen_string_literal: true

# vim: ts=4 sw=4 expandtab
module LanguageFilterable
  extend ActiveSupport::Concern

  included do
    belongs_to :language

    def self.filter_by_language_or_default(language = 'en')
      language = Language.find_by(id_or_iso_code: language)

      find_by(language: language) || find_by(language: Language.default)
    end
  end
end
