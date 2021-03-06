# lib/smart_message.rb
# encoding: utf-8
# frozen_string_literal: true

require 'date'  # STDLIB

require 'awesome_print'  # Pretty print Ruby objects with proper indentation and colors
require 'debug_me'       # A tool to print the labeled value of variables.
include DebugMe

require 'hashie'         # Your friendly neighborhood hash library.

require_relative './smart_message/version'
require_relative './smart_message/errors'

require_relative './smart_message/base.rb'

# SmartMessage abstracts messages from the backend broker process
module SmartMessage
  # The super class of all smart messages
  # class Base < Dash from the Hashie gem plus mixins
  # end

  # encapsulates the message broker plugin
  module Broker
    # The super class for the SmartMessage::Broker
    class Base
    end
  end

  # encapsulates the message code/decode serializer
  module Serializer
    # the super class of the message serializer
    class Base
    end
  end

  # encapsulates the message logging capability
  module Logger
    # the super class of the message logger
    class Base
    end
  end
end # module SmartMessage

require_relative './smart_message/broker'
require_relative './smart_message/serializer'
require_relative './smart_message/logger'
