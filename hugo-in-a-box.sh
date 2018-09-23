#!/usr/bin/env sh

###############################################################################
# Hugo in a Box                                                               #
# for Hugo Static Website Generator                                           #
#                                                                             #
# Version 0.1, Copyright (C) 2018 Gregory D. Horne                            #
#                                                                             #
# Licensed under the terms of the Simplified BSD Licence                      #
###############################################################################

echo
echo "run 'hugo server --bind=0.0.0.0 --disableFastRender'"
echo "to start the web server and view the website @ 'localhost:1313'"
echo

docker run --rm -it -v ${PWD}:/opt/project -p 1313:1313 hugo ${1}
echo

