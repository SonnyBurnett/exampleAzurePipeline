from __future__ import print_function
import argparse
import io
import json
import os
import sys

# defaults
verbosity = False

# parsing arguments
parser = argparse.ArgumentParser()
parser.add_argument("-V", "--verbose", action='store_true',
                    help="Show more logging")
parser.add_argument("-T", "--type", help="Action type [request]")
args = parser.parse_args()

if args.verbose:
    verbosity = True

if args.verbose:
    print("Started")
    print(args)

if args.type:
    print("Processing type {}".format(args.type))
else:
    print("Hello world.")

if verbosity:
    print("Finished")
