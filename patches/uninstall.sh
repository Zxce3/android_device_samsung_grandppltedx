echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="prebuilts/sdk bionic/libc/bionic"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
