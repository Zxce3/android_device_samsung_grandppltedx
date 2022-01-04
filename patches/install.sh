echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="prebuilts/sdk bionic/libc/bionic"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/samsung/grandppltedx/patches/$dir/*.patch
	echo " "
done

# ---------------------------------
echo "Changing to build directory..."
cd $rootdirectory
