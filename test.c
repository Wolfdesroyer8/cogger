#include "cogger.h"
#include <stdio.h>

int main(void) {
  info("test1");
  printf("color check\n");
  debug("test2");
  printf("color check\n");
  error("test3");
}
