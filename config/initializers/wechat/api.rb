module Wechat
  class Api
    CARD_BASE = 'https://api.weixin.qq.com/card/'.freeze

    def invoice_create_qrcode
      post "invoice/biz/getselecttitleurl", JSON.generate({}), base: CARD_BASE
    end
  end
end
