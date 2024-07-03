package.path = '../common/libs/?.lua;../common/vendor/?.lua;' .. package.path

local lu = require('luaunit')

TestSomething = {}

function TestSomething:testSomething()
  lu.assertEquals(true, true)
end

os.exit(lu.LuaUnit.run())

