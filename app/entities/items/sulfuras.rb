class Items::Sulfuras < ItemEntity
  def change_quality
    @item.quality = 80
  end
end
