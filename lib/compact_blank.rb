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

  refine Hash do
    def compact_blank
      reject { |_, v| v.blank? }
    end

    def compact_blank!
      reject! { |_, v| v.blank? }
    end
  end
end
