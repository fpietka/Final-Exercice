class Items::Standard < ItemEntity
  def change_quality
    if @item.sell_in >= 0 then
      quality_loss = @quality_loss[:base]
    else
      quality_loss = @quality_loss[:fast]
    end
    
    @item.quality = [@quality[:min], @item.quality - quality_loss].max
  end
end
