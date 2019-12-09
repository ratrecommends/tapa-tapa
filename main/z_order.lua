-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M.get(y)
    return - y * 0.0001
end

function M.update() 
    local pos = go.get_position()
    pos.z = M.get(pos.y)
    go.set_position(pos)
end

return M