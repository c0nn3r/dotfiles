-- Automatically load all the other lua scripts
for file in hs.fs.dir(os.getenv("HOME") .. "/.hammerspoon/") do
    if file:sub(-4) == ".lua" and file ~= "init.lua" then
        require(file:sub(0, -5))
    end
end
