# smart_message/lib/smart_message/errors.rb
# encoding: utf-8
# frozen_string_literal: true

module SmartMessage
  module Errors
    # A message can't be very smart if it does not know how to
    # send and receive itself using a message broker
    class NoBrokerConfigured < RuntimeError; end

    # The functionality has not be implemented
    class NotImplemented < RuntimeError; end

    # A message was received to which there is no subscription
    class ReceivedMessageNotSubscribed < RuntimeError; end

    # A received message is of an unknown class
    class UnknownMessageClass < RuntimeError; end

  end
end
