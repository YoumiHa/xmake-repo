package("endstone")
   add_urls("https://github.com/EndstoneMC/endstone.git")
   add_versions("0.4.10", "")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
