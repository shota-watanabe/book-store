class ShipmentsController < ApplicationController
  def index
    status = params[:status]
    status_method = status.to_sym
    if ShipmentFinder.respond_to?(status_method)
        @shipments = ShipmentFinder.send(status_method)
    else
        @shipments = Shipment.all
    end
    urgent_needs_tracking_shipments = ShipmentFinder.urgent_needs_tracking
    render status: :ok, json: { items: @shipments, urgent_needs_tracking: urgent_needs_tracking_shipments}
  end
end
