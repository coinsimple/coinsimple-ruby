module Coinsimple
  class Invoice

    def initialize opts = {}
      @options = opts
    end

    def set_name recipient
      @options[:name] = recipient
      self
    end

    def set_email email
      @options[:email] = email
      self
    end

    def set_processor processor
      @options[:processor] = processor
      self
    end

    def set_rate rate
      @options[:rate] = rate
      self
    end

    def set_currency currency
      @options[:currency] = currency
      self
    end

    def set_notes notes
      @options[:notes] = notes
      self
    end

    def set_precent precent
      @options[:precent] = precent
      self
    end
    alias_method :set_discount , :set_precent

    def set_custom custom
      @options[:custom] = custom
      self
    end

    def set_callback_url callback_url
      @options[:callback_url] = callback_url
      self
    end

    def set_redirect_url redirect_url
      @options[:redirect_url] = redirect_url
      self
    end

    def set_recurring_times recurring_times
      @options[:recurring_times] = recurring_times
      self
    end
    alias_method :set_stop_after , :set_recurring_times

    def recur_by_days num_days
      @options[:invoice_type] = 'days'
      @options[:interval] = num_days
      self
    end

    def recur_by_date day_of_month
      @options[:invoice_type] = 'date'
      @options[:interval] = day_of_month
      self
    end

    def add_item item
      @options[:items] = [] unless @options.has_key?(:items)
      @options[:items] << item
      self
    end

    def data
      @options
    end

  end
end
