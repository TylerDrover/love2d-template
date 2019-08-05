slider = {}

function slider:new()
    o = {}
    setmetatable(o, self)
    self._index = self

    return o
end