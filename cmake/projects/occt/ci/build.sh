# Install additional dependencies:

if [ "$(uname)" == "Darwin" ]; then
    # OSX    
    :
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # GNU/Linux
    sudo apt-get update
    sudo apt-get install mesa-common-dev libgl1-mesa-dev
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    :
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    :
fi


# Run normal build script: 
source ./.github/workflows/ci/build.sh
