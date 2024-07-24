package("endstone")
   set_urls("https://github.com/EndstoneMC/endstone.git")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
