#!/bin/bash
# Makefile configuration script
# This script is used to configure the Makefile for the C++ project.

echo "Welcome to the C++ Makefile configurator!"
echo "This script will configure the Makefile for the C++ project."

# Check if the CFLAGS file exists
if [ ! -f "CFLAGS.conf" ]; then
    echo "CFLAGS.conf file does not exist. Creating CFLAGS file..."
    touch CFLAGS.conf
fi

# Check if the CFLAGS file is empty
if [ ! -s "CFLAGS.conf" ]; then
    echo "CFLAGS file is empty. Writing default configuration to CFLAGS file..."
    echo "# CFLAGS Configuration file" >> CFLAGS.conf
    echo "# This file will be included in the Makefile" >> CFLAGS.conf
    echo "# You can change the CFLAGS here" >> CFLAGS.conf
    echo "" >> CFLAGS.conf
    echo "# Warnings and errors" >> CFLAGS.conf
    echo "# Uncomment to enables all the warnings" >> CFLAGS.conf
    read -p "Enable all the warnings? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Wall" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Wall" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to make all warnings into errors" >> CFLAGS.conf
    read -p "Make all warnings into errors? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Werror" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Werror" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable extra warnings" >> CFLAGS.conf
    read -p "Enable extra warnings? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Wextra" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Wextra" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Intermediate files" >> CFLAGS.conf
    echo "# Uncomment to enable intermediate files" >> CFLAGS.conf
    read -p "Enable intermediate files? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -save-temps" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -save-temps" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Verbosity" >> CFLAGS.conf
    echo "# Uncomment to enable verbose output" >> CFLAGS.conf
    read -p "Enable verbose output? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -v" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -v" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Debugging" >> CFLAGS.conf
    echo "# Uncomment to enable debugging" >> CFLAGS.conf
    read -p "Enable debugging? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -g" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -g" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Optimization" >> CFLAGS.conf
    echo "# Uncomment to enable optimization level 0" >> CFLAGS.conf
    read -p "Enable optimization level 0? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -O0" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -O0" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization level 1" >> CFLAGS.conf
    read -p "Enable optimization level 1? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -O1" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -O1" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization level 2" >> CFLAGS.conf
    read -p "Enable optimization level 2? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -O2" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -O2" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization level 3" >> CFLAGS.conf
    read -p "Enable optimization level 3? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -O3" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -O3" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization for code size" >> CFLAGS.conf
    read -p "Enable optimization for code size? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Os" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Os" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization for speed" >> CFLAGS.conf
    read -p "Enable optimization for speed? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Ofast" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Ofast" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
    echo "# Uncomment to enable optimization for speed" >> CFLAGS.conf
    read -p "Enable optimization for speed? [y/N] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "CFLAGS += -Og" >> CFLAGS.conf
    else 
        if [[ $REPLY =~ ^$ ]]; then
            :
        else
            echo ""
        fi
        echo "#CFLAGS += -Og" >> CFLAGS.conf
    fi
    echo "" >> CFLAGS.conf
fi

if [ ! -f "STD.conf" ]; then
    echo "STD.conf file does not exist. Creating STD file..."
    touch STD.conf
fi

if [ ! -s "STD.conf" ]; then
    # ask for STD 98, 11, 14, 17, 20, 23
    echo "STD.conf file is empty. Creating STD file..."
    echo "which standard do you want to use?"
    echo "1) C++ 98"
    echo "2) C++ 11"
    echo "3) C++ 14"
    echo "4) C++ 17 (default)"
    echo "5) C++ 20"
    echo "6) C++ 23"
    read -p "Enter your choice [1-6] " -n 1 -r
    if [[ $REPLY =~ ^[1]$ ]]; then
        echo ""
        std=98
    elif [[ $REPLY =~ ^[2]$ ]]; then
        echo ""
        std=11
    elif [[ $REPLY =~ ^[3]$ ]]; then
        echo ""
        std=14
    elif [[ $REPLY =~ ^[4]$ ]]; then
        echo ""
        std=17
    elif [[ $REPLY =~ ^[5]$ ]]; then
        echo ""
        std=20
    elif [[ $REPLY =~ ^[6]$ ]]; then
        echo ""
        std=23
    else
        echo ""
        std=17
    fi
    echo "# CFLAGS Configuration file" > STD.conf
    echo "# This file will be included in the Makefile" >> STD.conf
    echo "# You can change the STD here" >> STD.conf
    echo "" >> STD.conf
    echo "# C++ 98 standard" >> STD.conf
    if [[ $std = 98 ]]; then
        echo "STD += c++98" >> STD.conf
    else
        echo "# STD += c++98" >> STD.conf
    fi
    echo "" >> STD.conf
    echo "# C++ 11 standard" >> STD.conf
    echo "# https://en.cppreference.com/w/cpp/11" >> STD.conf
    if [[ $std = 11 ]]; then
        echo "STD += c++11" >> STD.conf
    else
        echo "# STD += c++11" >> STD.conf
    fi
    echo "" >> STD.conf
    echo "# C++ 14 standard" >> STD.conf
    echo "# https://en.cppreference.com/w/cpp/14" >> STD.conf
    if [[ $std = 14 ]]; then
        echo "STD += c++14" >> STD.conf
    else
        echo "# STD += c++14" >> STD.conf
    fi
    echo "" >> STD.conf
    echo "# C++ 17 standard (default)" >> STD.conf
    echo "# https://en.cppreference.com/w/cpp/17" >> STD.conf
    echo "# You will need c++17 if you want to use the following headers:" >> STD.conf
    echo "# <any>" >> STD.conf
    echo "# <charconv>" >> STD.conf
    echo "# <execution>" >> STD.conf
    echo "# <filesystem>" >> STD.conf
    echo "# <memory_resource>" >> STD.conf
    echo "# <optional>" >> STD.conf
    echo "# <string_view>" >> STD.conf
    echo "# <variant>" >> STD.conf
    if [[ $std = 17 ]]; then
        echo "STD += c++17" >> STD.conf
    else
        echo "# STD += c++17" >> STD.conf
    fi
    echo "" >> STD.conf
    echo "# C++ 20 standard" >> STD.conf
    echo "# https://en.cppreference.com/w/cpp/20" >> STD.conf
    echo "# You will need c++20 if you want to use the following headers:" >> STD.conf
    echo "# <bit>" >> STD.conf
    echo "# <compare>" >> STD.conf
    echo "# <concepts>" >> STD.conf
    echo "# <coroutine>" >> STD.conf
    echo "# <format>" >> STD.conf
    echo "# <numbers>" >> STD.conf
    echo "# <ranges>" >> STD.conf
    echo "# <source_location>" >> STD.conf
    echo "# <span>" >> STD.conf
    echo "# <syncstream>" >> STD.conf
    echo "# <version>" >> STD.conf
    echo "# <barrier>" >> STD.conf
    echo "# <latch>" >> STD.conf
    echo "# <semaphore>" >> STD.conf
    echo "# <stop_token>" >> STD.conf
    if [[ $std = 20 ]]; then
        echo "STD += c++20" >> STD.conf
    else
        echo "# STD += c++20" >> STD.conf
    fi
    echo "" >> STD.conf
    echo "# C++ 23 standard" >> STD.conf
    echo "# https://en.cppreference.com/w/cpp/23" >> STD.conf
    echo "# You will need c++23 if you want to use the following headers:" >> STD.conf
    echo "# <expected>" >> STD.conf
    echo "# <flat_map>" >> STD.conf
    echo "# <flat_set>" >> STD.conf
    echo "# <generator>" >> STD.conf
    echo "# <mdspan>" >> STD.conf
    echo "# <print>" >> STD.conf
    echo "# <spanstream>" >> STD.conf
    echo "# <stacktrace>" >> STD.conf
    echo "# <stdfloat>" >> STD.conf
    echo "# <stdatomic.h>" >> STD.conf
    if [[ $std = 23 ]]; then
        echo "STD += c++23" >> STD.conf
    else
        echo "# STD += c++23" >> STD.conf
    fi
fi

if [ ! -f "Makefile" ]; then
    echo "Makefile does not exist. Creating Makefile..."
    touch Makefile
fi

if [ ! -s "Makefile" ]; then
    echo "Makefile is empty. Creating Makefile..."
    echo "# Compiler" >> Makefile
    echo "CC = g++" >> Makefile
    echo "" >> Makefile
    echo "# Compiler flags. These are the default flags." >> Makefile
    echo "CFLAGS = " >> Makefile
    echo "STD = " >> Makefile
    echo "" >> Makefile
    echo "# Folder locations" >> Makefile
    echo "# Source code" >> Makefile
    echo "SRC = src" >> Makefile
    echo "" >> Makefile
    echo "# Binary output" >> Makefile
    echo "BIN = bin" >> Makefile
    echo "" >> Makefile
    echo "# Library files" >> Makefile
    echo "LIB = lib" >> Makefile
    echo "" >> Makefile
    echo "# Output file name" >> Makefile
    echo "OUTPUT = \$(BIN)/main" >> Makefile
    echo "" >> Makefile
    echo "# Keep these includes. They import the configuration files." >> Makefile
    echo "include CFLAGS.conf" >> Makefile
    echo "include STD.conf" >> Makefile
    echo "" >> Makefile
    echo "all: init compile run" >> Makefile
    echo "" >> Makefile
    echo "init:" >> Makefile
    echo "	rm -rf bin" >> Makefile
    echo "	mkdir bin" >> Makefile
    echo "" >> Makefile
    echo "compile:" >> Makefile
    echo "	\$(CC) \$(CFLAGS) -std=\$(STD) \$(SRC)/*.cpp -o \$(OUTPUT) -I \$(LIB)" >> Makefile
    echo "" >> Makefile
    echo "run:" >> Makefile
    echo "	./\$(OUTPUT)" >> Makefile
    echo "" >> Makefile
    echo "clean:" >> Makefile
    echo "	rm -rf bin" >> Makefile
fi

echo "Done creating files."
echo "Now go into the Makefile and change the settings to your liking."
