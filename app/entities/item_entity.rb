class ItemEntity
  def initialize(item)
    @item = item

    @quality = {'max': 50, 'min': 0}
    @quality_loss = {'base': 1, 'fast': 2}
  end
  
  def change_sell_in
    @item.sell_in -= 1
  end
end
