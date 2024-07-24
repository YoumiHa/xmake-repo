package("endstone")
   add_urls("https://raw.githubusercontent.com/YoumiHa/endstone/main/endstone.tar")
    on_install("windows", function (package)
        os.exec("build.bat");
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
