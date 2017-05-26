# encoding: utf-8
require 'spec_helper'
require "logstash/filters/htmlentities"

describe LogStash::Filters::HTMLEntities do
  describe "Simple HTML entity encoding of source field `test_source_field` while storing the result to field `test_target_field`" do
    let(:config) do <<-CONFIG
      filter {
        htmlentities {
          source => "test_source_field"
          target => "test_target_field"
        }
      }
    CONFIG
    end

    sample("test_source_field" => "G&amp;G CHIPS") do
      expect(subject.get("test_target_field")).to eq("G&G CHIPS")
    end
  end
end
