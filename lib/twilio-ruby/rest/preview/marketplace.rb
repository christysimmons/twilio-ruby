##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Preview
      class Marketplace < Version
        ##
        # Initialize the Marketplace version of Preview
        def initialize(domain)
          super
          @version = 'marketplace'
          @available_add_ons = nil
          @installed_add_ons = nil
        end

        ##
        # @param [String] sid The SID of the AvailableAddOn resource to fetch.
        # @return [Twilio::REST::Preview::Marketplace::AvailableAddOnContext] if sid was passed.
        # @return [Twilio::REST::Preview::Marketplace::AvailableAddOnList]
        def available_add_ons(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @available_add_ons ||= AvailableAddOnList.new self
          else
            AvailableAddOnContext.new(self, sid)
          end
        end

        ##
        # @param [String] sid The SID of the InstalledAddOn resource to fetch.
        # @return [Twilio::REST::Preview::Marketplace::InstalledAddOnContext] if sid was passed.
        # @return [Twilio::REST::Preview::Marketplace::InstalledAddOnList]
        def installed_add_ons(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @installed_add_ons ||= InstalledAddOnList.new self
          else
            InstalledAddOnContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Preview::Marketplace>'
        end
      end
    end
  end
end