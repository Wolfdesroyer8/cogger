#include "cogger.h"
#include <stdio.h>

void info(char *msg) { fprintf(stdout, "\033[0;37m[INFO] %s\033[0m\n", msg); }

void debug(char *msg) { fprintf(stdout, "\033[0;33m[DEBUG] %s\033[0m\n", msg); }

void error(char *msg) { fprintf(stderr, "\033[0;31m[ERROR] %s\033[0m\n", msg); }
