set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
export WS_DIR="${CURRENT_DIR}/.."
export OUTPUT_DIR="${WS_DIR}/output"
mkdir -p $OUTPUT_DIR

export NO_MULTI_GPU=1
export USE_CUDNN=0

make -f ${WS_DIR}/Makefile OUTPUT_DIR=${OUTPUT_DIR}