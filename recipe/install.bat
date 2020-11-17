if "%PKG_NAME%" == "s2n-static" (
    cd build-static
    ninja install
    echo Keeping all files, conda will dedupe
) else (
    cd build-shared
    ninja install
)
