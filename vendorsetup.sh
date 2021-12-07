# This is optional. It always errors out on my side
# Assertion `cnt
# Your mileage may vary
export LC_ALL=C

# set Jack VM max memory usage
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx7G"

# REMINDER: Java deprecated TLS v1/v1.1, which is used by Jack
echo "# Reminder: Java deprecated TLSv1 and TLSv1.1,"
echo "            both of which are used by Jack,"
echo "            causing it to fail with error 255."
echo ""
echo "# Please open /etc/java-8-openjdk/security/java.security as sudo,"
echo "  using any text editor of your choice/distro:"
echo ""
echo "$ sudo xed /etc/java-8-openjdk/security/java.security"
echo ""
echo "# Find jdk.tls.disabledAlgorithms, remove TLSv1 and TLSv1.1, save it,"
echo "  before making actual build."
echo ""

# REMINDER: curl also moved --no-proxy option to --noproxy
echo "# Reminder: curl also moved --no-proxy option to --noproxy."
echo "            You need to run this in the root of AOSP"
echo ""
echo "~/android/cm13 $ device/samsung/grandppltedx/patches/install.sh"
echo ""

# REMINDER: to remove these if you feel repetitive
echo "# please remove these in device/samsung/grandppltedx/vendorsetup.sh,"
echo "  if you have done those"

# combo
add_lunch_combo lineage_grandppltedx-userdebug
add_lunch_combo lineage_grandppltedx-eng
