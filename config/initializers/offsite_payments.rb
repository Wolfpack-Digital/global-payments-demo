require 'offsite_payments'
require 'offsite_payments/action_view_helper'

ActionView::Base.send(:include, OffsitePayments::ActionViewHelper)
OffsitePayments.mode = :test # for testing server

Rails.configuration.offsite_payments = YAML.load(ERB.new(File.read("#{Rails.root}/config/offsite_payments.yml")).result)
