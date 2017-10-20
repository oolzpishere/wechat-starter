module InvoicesHelper
  def to_json(json)
    JSON.parse(json)
  end
end
