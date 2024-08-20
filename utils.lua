local utils = {}

---joins the tables that are passed into a new one
---if the tables have the same fields, return null.
---@param tables table
---@return table|nil
function utils.join(tables)
	local result_table = {}
	local fields_seen = {}
	-- iterate over each table in the input list
	for _, t in ipairs(tables) do
		-- iterate over the field value pairs in the table
		for field, value in pairs(t) do
			-- check if the field has been seen before
			if fields_seen[field] then
				return nil
			end
			-- add the field to the result table
			result_table[field] = value
			-- mark the field as seen
			fields_seen[field] = true
		end
	end
	return result_table
end

return utils
