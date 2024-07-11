--[[
  @author Derrick Shibero
]]

local utilities = {}

function utilities.get_random(min, max)
  return math.random(min, max)
end
function isPresent(numbers, num)
  for i = 1, #numbers do
    if numbers[i] == num then
      return true
    end
  end
  return false
end

function utilities.get_drawer_numbers()
  local numbers = {}
  while #numbers ~= 100 do
    local num = utilities.get_random(1, 100)
    while isPresent(numbers, num) == true do
      num = utilities.get_random(1, 100)
    end
    table.insert(numbers, num)
  end
  return numbers
end

return utilities