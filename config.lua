-- config.lua
local config = require("lapis.config")

config("development", {
  port = 9090,
  greeting = "Hello user",
  session_name = "bentest_session",
  secret = "fred is my favorite word",
  mysql = {
	host = "127.0.0.1",
	user = "luatest",
	password = "1236",
	database = "luatest"
	}
})

