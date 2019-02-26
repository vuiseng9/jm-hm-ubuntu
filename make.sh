#!/usr/bin/env bash
cd JM && make -j8 && cd ..
cd HM/build/linux && make -j8 && cd ../../..

