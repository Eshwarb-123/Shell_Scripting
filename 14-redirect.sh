#!/bin/bash

#to redirect stdout and stderr


ls folder1/ testdir/ 2>&1 | tee error.txt


