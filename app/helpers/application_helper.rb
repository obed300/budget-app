module ApplicationHelper
    def category_total(category_id)
        trade_total = Trade.joins(:categories)
                           .where(categories: { id: category_id })
                           .sum(:amount)
        trade_total || 0
    end

    def get_local_date
        Time.zone.now.strftime('%d %B %Y')
    end
end
