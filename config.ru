require "yeah/web/server"

run Yeah::Web::Server.const_get("Application").new
