module InvoicesHelper

  def invoice_hash
    {
      title: '抬头',
      tax_no: '税号',
      addr: '地址',
      phone: '联系方式',
      bank_type: '银行类型',
      bank_no: '银行号码',
      create_time: '创建时间',
      updated_at: '更新时间'
    }
  end

  def to_hash(json)
    JSON.parse(json).deep_transform_keys {|k| k.underscore.to_sym}
  end
end
