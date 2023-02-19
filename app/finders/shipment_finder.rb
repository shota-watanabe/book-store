class ShipmentFinder
  class << self
    def urgent_needs_tracking
      query = needs_tracking.and(is_ready)
      binding.pry

      resource_class.where(query)
    end

    def shipped
      resource_class.where(state: 'shipped')
    end

    private

    def urgent
      resource_class.where('created_at <= ?', Time.zone.now + 7.days)
    end

    def is_ready
      table[:state].eq('ready')
    end

    def needs_tracking
      table[:state].eq('needs_tracking')
    end

    def needs_label
      table[:state].eq('needs_label')
    end

    def table
      resource_class.arel_table
    end

    def resource_class
      ::Shipment
    end
  end
end