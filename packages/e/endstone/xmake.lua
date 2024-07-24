package("endstone")
   add_urls("https://raw.githubusercontent.com/YoumiHa/endstone/main/endstone.tar")
   add_versions("latest","6ce746789b6defcaf027e476f97a6800013b0b090f3758383f67fbbe0640d483")
    on_install("windows", function (package)
        os.exec("build.bat");
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
