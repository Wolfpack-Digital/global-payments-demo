# frozen_string_literal: true

class GlobalPaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def paid
    create_notification

    if @notification.complete? # check if it's genuine Global Payments request
      @order.approved! # project-specific code
      # redirect_to order_path(@order), notice: 'Successful payment'
      render inline: '<h2>Success</h2>'
    else
      @order.failed!

      render_failed_transaction
    end
  end

  private

  def render_failed_transaction
    if @notification.verified?
      render inline: "<h2>failed - #{@notification.message}</h2>"
    else
      render inline: '<h2>failed - not a genuine Global Payments request</h2>'
    end
  end

  def create_notification
    @notification = OffsitePayments
                    .integration(:global_payments_offsite)
                    .notification(
                      request.raw_post,
                      credential3: Rails.configuration.offsite_payments['global_payments']['shared_secret']
                    )

    find_payment
  end

  def find_payment
    @order = Order.find(@notification.item_id)
  end
end
