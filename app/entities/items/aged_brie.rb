class Items::AgedBrie < ItemEntity
  def change_quality
    @item.quality = [@item.quality + 1, @quality[:max]].min
  end
end
