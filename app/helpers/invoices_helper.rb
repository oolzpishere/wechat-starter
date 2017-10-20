module InvoicesHelper
  def to_hash(json)
    JSON.parse(json)
  end
end
