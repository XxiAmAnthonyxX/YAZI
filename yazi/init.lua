-- ~/.config/yazi/init.lua

-- Full border (cleaner panes)
require("full-border"):setup({
	type = ui.Border.ROUNDED,
})

-- Git status signs in the file list
require("git"):setup({ order = 1500 })

-- Custom linemode: size + mtime (referenced by linemode = "size_and_mtime")
function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%b %d %H:%M", time)
	else
		time = os.date("%b %d  %Y", time)
	end

	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end

-- Optional: starship status line (requires starship + plugin)
-- Uncomment after: ya pkg add yazi-rs/plugins:starship
-- require("starship"):setup()
