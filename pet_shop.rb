# 1
def pet_shop_name(shop)
  return shop[:name]
end

# 2
def total_cash(shop)
  return shop[:admin][:total_cash]
end

# 3 and 4
def add_or_remove_cash(shop, cash)
  return shop[:admin][:total_cash]+=(cash)
end

# 5
def pets_sold (shop)
  return shop[:admin][:pets_sold]
end

# 6
def increase_pets_sold(shop, sales)
  return shop[:admin][:pets_sold]+=sales
end

# 7
def stock_count(shop)
  return shop[:pets].count
end

# 8 and 9
def pets_by_breed(shop, breed)

same_breed = []

  for pet in shop[:pets]
    if pet[:breed] == breed
      same_breed.push(pet)
    end
  end
 return same_breed
end

# 10 & 11
def find_pet_by_name(shop, name)

  for pet in shop[:pets]
    return pet if pet[:name] == name
  end

  return nil
  
end


# def test_find_pet_by_name__returns_nil
#   pet = find_pet_by_name(@pet_shop, "Fred")
#   assert_nil(pet)
# end