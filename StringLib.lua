local StringLib = {}
function StringLib.Capitalize(str)
    if not str or str == "" then return "" end
    return str:sub(1, 1):upper() .. str:sub(2)
end

function StringLib.Trim(str)
    if not str then return "" end
    return str:match("^%s*(.-)%s*$")
end

function StringLib.Truncate(str, limit)
    limit = limit or 30
    if #str <= limit then return str end
    return str:sub(1, limit) .. "..."
end
function StringLib.Reverse(str)
    return str:reverse()
end