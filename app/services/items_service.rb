class ItemsService
  def initialize(item)
    entities = {
      'Aged Brie': Items::AgedBrie,
      'Backstage passes to a TAFKAL80ETC concert': Items::Backstage,
      'Sulfuras, Hand of Ragnaros': Items::Sulfuras,
      'Conjured': Items::Conjured
    }

    @item = (entities[item.name.to_sym] || Items::Standard).new(item)
  end

  def next_day
    @item.change_quality
    @item.change_sell_in
  end
end
