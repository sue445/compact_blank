RSpec.describe CompactBlank do
  describe "Array#compact_blank" do
    subject { source.compact_blank }

    using CompactBlank
    using RSpec::Parameterized::TableSyntax

    where(:source, :compacted) do
      ["a", nil, "b", ""]  | ["a", "b"]
      ["a", "b", "c", "d"] | ["a", "b", "c", "d"]
    end

    with_them do
      it { should eq compacted }
    end
  end

  describe "Array#compact_blank!" do
    subject { source.compact_blank! }

    using CompactBlank
    using RSpec::Parameterized::TableSyntax

    where(:source, :compacted, :result) do
      ["a", nil, "b", ""]  | ["a", "b"]           | ["a", "b"]
      ["a", "b", "c", "d"] | ["a", "b", "c", "d"] | nil
    end

    with_them do
      it "should be compacted" do
        expect(subject).to eq result
        expect(source).to eq compacted
      end
    end
  end

  describe "Hash#compact_blank" do
    subject { source.compact_blank }

    using CompactBlank
    using RSpec::Parameterized::TableSyntax

    where(:source, :compacted) do
      { a: "1", b: nil, c: "3", d: "" }  | { a: "1", c: "3" }
      { a: "1", b: "2", c: "2", d: "4" } | { a: "1", b: "2", c: "2", d: "4" }
    end

    with_them do
      it { should eq compacted }
    end
  end

  describe "Hash#compact_blank!" do
    subject { source.compact_blank! }

    using CompactBlank
    using RSpec::Parameterized::TableSyntax

    where(:source, :compacted, :result) do
      { a: "1", b: nil, c: "3", d: "" }  | { a: "1", c: "3" }                 | { a: "1", c: "3" }
      { a: "1", b: "2", c: "2", d: "4" } | { a: "1", b: "2", c: "2", d: "4" } | nil
    end

    with_them do
      it "should be compacted" do
        expect(subject).to eq result
        expect(source).to eq compacted
      end
    end
  end
end
