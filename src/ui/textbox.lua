textbox = {}

function textbox:new()
    o = {}
    setmetatable(o, self)
    self._index = self

    return o
end