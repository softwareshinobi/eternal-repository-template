FROM nginx:latest

##

ARG rootDir="/"

ARG scriptDir=./

ARG scriptName=operating-system-provision-scripts.sh

ARG scriptPath=$rootDir$scriptDir/$scriptName

##

COPY $scriptDir $rootDir

RUN chmod +x $scriptPath

RUN $scriptPath
