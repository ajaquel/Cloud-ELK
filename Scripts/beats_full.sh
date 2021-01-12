#!/bin/bash

echo "This Script will Install, Configure and Run Beats 7.8.0 Agents."
./beats_installation.sh
./beats_configuration.sh
./beats_start.sh
./beats_test.sh

