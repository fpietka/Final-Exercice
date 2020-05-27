class Items::Backstage < ItemEntity
  def change_quality
    if @item.sell_in <= 0 then
      @item.quality = @quality[:min]
    elsif @item.sell_in <= 5 then
      @item.quality += 3
    elsif @item.sell_in <= 10 then
      @item.quality += 2
    else
      @item.quality += 1
    end
  end
end
