declare {BPM_USERNAME,BPM_PASSWORD,HOST,TARGET_IP,OVERRIDE_STATUS}=''
OPTS=`getopt -a --longoptions username:,password:,csc:,ip:,override: -n "$0" -- "$@"`
eval set -- "$OPTS"

if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1 ; fi

while true; do

    echo $OPTS
    echo $1
    echo $2

  case "$1" in
    --username )
        BPM_USERNAME=$2
        shift 2
        ;;
    --password )
        BPM_PASSWORD=$2
        shift 2
        ;;
    --csc )
        HOST=$2
        shift 2
        ;;
    --ip )
        TARGET_IP=$2
        shift 2
        ;;
    --override )
        OVERRIDE_STATUS=$2
        shift 2
        ;;
    --)
        shift
        echo "Breaking While loop"
        break
        ;;
    *)
        echo "Error in given Parameters. Undefined: "
        echo $*
        echo ""
        echo "Usage: $0 [--username BPM_USERNAME] [--password BPM_PASSWORD] [--ip IP ADDRESS_OF_VyOS/BPM] [--csc CLIENT_SHORT_CODE] [--override TRUE/FALSE]"
        exit 1
  esac
done





