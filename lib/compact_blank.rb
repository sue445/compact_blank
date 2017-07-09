require "compact_blank/version"
require "active_support/core_ext/object/blank"

module CompactBlank
  refine Array do
    def compact_blank
      reject(&:blank?)
    end

    def compact_blank!
      reject!(&:blank?)
    end
  end
end
