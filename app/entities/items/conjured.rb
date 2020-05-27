class Items::Conjured < Items::Standard
  def initialize(item)
    super(item)
    @quality_loss = {'base': 2, 'fast': 4}
  end
end
