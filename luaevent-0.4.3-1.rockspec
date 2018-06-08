-- This file was automatically generated for the LuaDist project.

package="luaevent"
version="0.4.3-1"
-- LuaDist source
source = {
  tag = "0.4.3-1",
  url = "git://github.com/LuaDist-testing/luaevent.git"
}
-- Original source
-- source = {
--    url = "https://github.com/harningt/luaevent/archive/v0.4.3.tar.gz",
--    dir = "luaevent-0.4.3",
-- }
description = {
   summary = "libevent binding for Lua",
   detailed = [[
       This is a binding of libevent to Lua
   ]],
   homepage = "https://github.com/harningt/luaevent",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
external_dependencies = {
   EVENT = {
      header = "event.h",
      library = "event",
   }
}
build = {
   type = "builtin",
   modules = {
      ["luaevent.core"] = {
         sources = { "src/buffer_event.c", "src/event_buffer.c", "src/event_callback.c", "src/utility.c", "src/luaevent.c" },
         libdirs = "$(EVENT_LIBDIR)",
         incdirs = { "include", "$(EVENT_INCDIR)" },
         libraries = "event",
      },
      ["luaevent"] = "lua/luaevent.lua",
   },
   copy_directories = { "doc", "test" },
}