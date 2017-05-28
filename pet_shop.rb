def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return shop[:admin][:total_cash]+=(cash)
end

def pets_sold (shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sales)
  shop[:admin][:pets_sold]+=sales
end

def stock_count(shop)
  return shop[:pets].count
end
