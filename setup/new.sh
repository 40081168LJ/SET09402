# Run this script with sudo after the creation of a new codespace

apt update                      # update apt repository information
apt install default-jdk -y      # install jdk
apt install android-sdk -y      # install Android sdk
cd /usr/lib/android-sdk -y      # change into Android sdk directory
                                # then download cmdline_tools
curl -o cli_tools.zip https://bdavison.napier.ac.uk/set09102/setup/commandlinetools-linux-11076708_latest.zip
unzip cli_tools.zip             # Unzip cmdline_tools (including sdkmanager)
cd cmdline-tools/bin            # change into cmdline_tools directory
                                # then update Android platforms to latest
echo y | ./sdkmanager --update --sdk_root=/usr/lib/android-sdk/
cd Haulage                      # change into project root directory
dotnet workload restore         # restore MAUI workloads
dotnet restore                  # restore project
echo Done                       # report end of script
