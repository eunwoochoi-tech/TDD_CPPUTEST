#!/bin/bash
TEMPLATE_DIR=${CPPUTEST_HOME}/scripts/templates
source ${CPPUTEST_HOME}/scripts/GenerateSrcFiles.sh ClassNameC c NoMock $1 $2

### -- 현재 대소문자 구문 못하므로 추후 추가해야함 -- ##

# src
NAME=$1.c
mkdir ../src/$1
mv $1.c ../src/$1

# include
NAME=$1Test.h
mkdir ../include/$1
mv $1.h ../include/$1

# test
NAME=$1Test.cpp
mkdir ../test/$1
mv $NAME ../include/$NAME

