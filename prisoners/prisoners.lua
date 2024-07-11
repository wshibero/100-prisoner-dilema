--[[
  @author derrick wakhu shibero
]]

local prisoners = {}
utilities = require("modules.utilities")

function prisoners.main()
  local drawer_numbers = utilities.get_drawer_numbers(10)
  prisoners.print_drawer_numbers(drawer_numbers)
end

function prisoners.print_drawer_numbers(numbers)
  for i = 1, #numbers do
    print(i.."=>"..numbers[i])
  end
end

return prisoners