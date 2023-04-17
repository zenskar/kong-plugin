package = "kong-plugin-zenskar"
version = "1.0.0-1"      

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "zenskar"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/zenskar/kong-plugin",
  tag = "1.0.0"
}

description = {
  summary = "Zenskar plugin for kong",
  homepage = "https://www.zenskar.com",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.zenskar.handler"] = "kong/plugins/zenskar/handler.lua",
    ["kong.plugins.zenskar.schema"] = "kong/plugins/zenskar/schema.lua",
  }
}
