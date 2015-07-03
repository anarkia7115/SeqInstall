#!/bin/bash

# make align
mv $APP/software/AlignReferenceBwa.c $APP/align
cd $APP/align/

gcc ./AlignReferenceBwa.c -o AlignReferenceBwa
