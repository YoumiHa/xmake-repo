package("endstone")
   add_urls("https://raw.githubusercontent.com/YoumiHa/endstone/main/endstone.tar")
   add_versions("latest","17e5173cf4d6e608c777fd279873da26a26420177547aa7dd122b9cbc7cb12c6")
    on_install("windows", function (package)
        os.exec("start.bat")
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
