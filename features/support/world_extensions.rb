module KnowsTheDomain
  def power
    @power ||= nil
  end

  def interest
    @interest ||= nil
  end
end

World(KnowsTheDomain)