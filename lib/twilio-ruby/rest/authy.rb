##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

module Twilio
  module REST
    class Authy < Domain
      ##
      # Initialize the Authy Domain
      def initialize(twilio)
        super

        @base_url = 'https://authy.twilio.com'
        @host = 'authy.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of authy
      def v1
        @v1 ||= V1.new self
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Service.
      # @return [Twilio::REST::Authy::V1::ServiceInstance] if sid was passed.
      # @return [Twilio::REST::Authy::V1::ServiceList]
      def services(sid=:unset)
        self.v1.services(sid)
      end

      ##
      # @param [form.FormType] form_type The Form Type of this Form. One of
      #   `form-app-push`, `form-sms` or `form-totp`.
      # @return [Twilio::REST::Authy::V1::FormInstance] if form_type was passed.
      # @return [Twilio::REST::Authy::V1::FormList]
      def forms(form_type=:unset)
        self.v1.forms(form_type)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Authy>'
      end
    end
  end
end