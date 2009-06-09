module StoresHelper
  def has_chain?
    @chain.instance_of? Chain
  end
end
