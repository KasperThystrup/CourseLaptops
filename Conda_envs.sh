# Initial laptop setup
scriptdir=$(dirname -- "$0")
olddir=$(pwd)
log=$scriptdir/$(basename $0 .sh).log
error=$scriptdir/$(basename $0 .sh).err
course=BGAPS
yaml_dir=$scriptdir/yaml/$course
# Automatic install of Conda environments
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Installing conda environments with micromamba"  >> $log

find $yaml_dir -maxdepth 1 -type f -iname "*yaml" -exec micromamba create -f {} --yes \; >> $log 2>> $error
