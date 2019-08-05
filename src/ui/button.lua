button = {}

function button:new()
    o = {}
    setmetatable(o, self)
    self._index = self

    return o
end