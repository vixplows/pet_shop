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

# 12
def remove_pet_by_name(shop, name) 

  for pet in shop[:pets]
      shop[:pets].delete(pet) if pet[:name] == name
  end
end

# 13
def add_pet_to_stock(shop, new_pet)
  return shop[:pets] << new_pet
end

# 14
def customer_pet_count(customers)
  return customers[:pets].count
end

# 15
def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

# Optional 1 and 2
def customer_can_afford_pet(customer, new_pet)
  return false if customer[:cash] < new_pet[:price]
  return true if customer[:cash] >= new_pet[:price]
end

# Optional 3, 4 and 5
def sell_pet_to_customer(shop, pet, customer)
  
  if pet && customer[:cash] >= pet[:price]
    customer[:pets] << shop[:pet]
    shop[:admin][:pets_sold] += customer[:pets].count
    shop[:admin][:total_cash] += pet[:price]
  end

end