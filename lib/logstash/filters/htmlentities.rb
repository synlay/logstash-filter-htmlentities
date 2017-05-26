# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"
require "htmlentities"

class LogStash::Filters::HTMLEntities < LogStash::Filters::Base
    config_name "htmlentities"

    # The field to perform filter
    #
    config :source, :validate => :string, :default => "message"

    # The name of the container to put the result
    #
    config :target, :validate => :string, :default => "message"


    public
    def register
      @coder = HTMLEntities.new
    end # def register

  public
  def filter(event)

    if @source
      # Replace the event message with our message as configured in the
      # config file.
      event.set(@target, @coder.decode(event.get(@source)))
      # correct debugging log statement for reference
      # using the event.get API
      @logger.debug? && @logger.debug("#{@target} is now: #{event.get(@target)}")
    end

    # filter_matched should go in the last line of our successful code
    filter_matched(event)
  end # def filter
end # class LogStash::Filters::Example
