package("endstone")
   set_urls("https://github.com/YoumiHa/endstone.git")

    on_install("windows", function (package)
        os.exec("./build.bat");
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
