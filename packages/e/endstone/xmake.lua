package("endstone")
   add_urls("https://raw.githubusercontent.com/YoumiHa/endstone/main/endstone.tar")
   add_versions("latest","0def1b513cf496d6195008e47dc26e6363900df2cdb5b193157dffce4806e32c")
    on_install("windows", function (package)
        os.exec("build.bat");
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
