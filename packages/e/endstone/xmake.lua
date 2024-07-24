package("endstone")

    set_urls("https://github.com/EndstoneMC/endstone.git")

    on_install(function (package)
        import("package.tools.autoconf").install(package)
    end)
