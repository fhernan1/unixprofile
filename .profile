#########################################
# Clear some environment variables
# before setting them for DataStage 8.1
#########################################
ulimit -c 0
mesg n

unset DSHOME LIBPATH PATH APT_ORCHHOME LD_LIBRARY_PATH DB2_HOME LM_LICENSE_FILE ASDIR UDTHOME LDR_CNTRL UDTBIN ASBHOME HOME

WORK=/datawhse/work/`whoami`
HOME=/home/`whoami`
export ENV=~/.kshrc
export PATH=/usr/bin:/etc:/usr/sbin:/usr/ucb:$HOME/bin:$HOME/.local/bin:/usr/bin/X11:/sbin:/opt/IBM/InformationServer/Server/DSEngine/bin:/opt/IBM/InformationServer/Clients/istools/cli:/usr/vacpp/bin:/usr/local/monitor:/opt/Connect-Direct/CDFtp:/usr/java14/bin:/datawhse/prod/bin:/datawhse/prod/util:/datawhse/prod/util/file:/usr/local/bin:/datawhse/prod/util
#export LIBPATH=/opt/freeware/lib:/opt/freeware/lib/64:/usr/lib:/usr/lib/64

# Set script/proc params
export VIM=/datawhse/prod/util/share/vim
export EDITOR=vim
export CURRENT_HOST=`hostname`
export HOSTNAME=`hostname`
export DATA_DIR=/datawhse/prod/data/export
export INCLUDE_DIR=/tech/prod/include
export SCRIPT_DIR=/datawhse/prod/scripts
export PROC_DIR=/datawhse/prod/procs
export LOG_DIR=/datawhse/prod/logs
export EXP_DIR=/datawhse/prod/data/export
export GNU=/opt/freeware/bin


umask 002        # Recommended setting for DataStage
export PROJECT=di_dev_
export DSVER=85
export DS_HOME=/datawhse/prod/

. /opt/IBM/InformationServer/Server/DSEngine/dsenv
#. /datawhse/prod/.pgp/pgp_vars

unset DSM_LOG DSM_DIR DSM_CONFIG





#export ftp_proxy=http://webproxy.bcbst.com:80
#export http_proxy=http://webproxy.bcbst.com:80
#export https_proxy=https://webproxy.bcbst.com:80

echo "Finished .profile - DataStage 8.5"
