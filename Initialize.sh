# Initial laptop setup
scriptdir=$(dirname -- "$0")
olddir=$(pwd)
log=$scriptdir/$(basename $0 .sh).log
error=$scriptdir/$(basename $0 .sh).err

# Debian packages
deb_rstudio=$scriptdir/rstudio-2025.09.1-401-amd64.deb

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Initiating Course Setup" > $log

cd $scriptdir

## Debian Packages
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Installing from Debian" >> $log
sudo apt update >> $log 2>> $error

sudo apt install r-base curl $deb_rstudio --yes >> $log 2>> $error

## Conda interpreter Micromamba
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Installing Micromamba with default settings" >> $log
echo ~/.local/bin Y Y ~/micromamba | "${SHELL}" <(curl -L micro.mamba.pm/install.sh) >> $log 2>> $error


