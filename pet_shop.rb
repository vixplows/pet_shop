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
  return shop[:admin][:pets_sold]+=sales
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)

same_breed = []

  for pet in shop[:pets]

    if pet[:breed] == breed
      same_breed.push(pet)
    end

  end

 return same_breed
end

def find_pet_by_name(shop, name)

  for pet in shop[:pets]
    
    if pet[:name] == name
    return pet
    end

  end

end