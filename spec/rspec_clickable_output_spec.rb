require 'rspec_clickable_output'
require 'rspec'

module RSpec
  module Core
    describe Metadata do
      let(:subject){ ::RSpec::Core::Metadata }
      let(:pwd){ Dir.pwd }

      it "does not change random lines" do
        subject.relative_path("unchanged").should eq "unchanged"
      end

      it "transforms a relative path with description to a clickable absolute path" do
        path = "./spec/models/jungle_spec.rb:118:in `block (3 levels) in <top (required)>'"
        expectation = "txmt://open?url=file://" + pwd + "/spec/models/jungle_spec.rb&line=118 in `block (3 levels) in <top (required)>'"
        out = subject.relative_path(path)

        out.should eq expectation
      end

      it "transforms absolute path to a clickable absolute path" do
        path = "/Users/tadas/Sites/secret/spec/models/jungle_spec.rb:118:in `block (3 levels) in <top (required)>'"
        expectation = "txmt://open?url=file:///Users/tadas/Sites/secret/spec/models/jungle_spec.rb&line=118 in `block (3 levels) in <top (required)>'"
        out = subject.relative_path(path)

        out.should eq expectation
      end
    end
  end
end
