package("endstone")
   add_urls("https://raw.githubusercontent.com/YoumiHa/endstone/main/endstone.tar")
   add_versions("latest","29302ba52aadcbcec0e19a671dca963d50a3c33a75434f80700bfef7d96a030f")
    on_install("windows", function (package)
        os.exec("build.bat");
        os.cp("lib/include/bedrock", package:installdir("include"))
        os.cp("lib/include/endstone", package:installdir("include"))
        os.cp("lib/endstone_runtime.lib", package:installdir("lib"))
    end)
