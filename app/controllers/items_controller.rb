
require 'payjp'
class ItemsController < ApplicationController
  def index
    @items = Item.all
  end 
  
  def purchase
    Payjp.api_key = "sk_test_d8b3b5549a7400ae0fabaf27"
    Payjp::Charge.create(
      amount: 800, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

end
