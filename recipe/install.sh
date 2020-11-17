if [[ "$PKG_NAME" == *static ]]
then
    cd build-static
    ninja install
    # relying on conda to dedup package
    echo "Keeping all files, conda will dedupe"
else
    cd build-shared
    ninja install
fi
