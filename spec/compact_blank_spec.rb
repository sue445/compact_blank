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
end
