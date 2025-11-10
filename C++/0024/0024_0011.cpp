#include "000.h"
#include <iostream>
#include <stdio.h>
using namespace std;

int main() {

  header("test", "linefeed notation");

  const char *c1 = "abc\ 
d";

  const char *c2 = "abc\
d";

  const char *c3 = "abc\	
d";

  const char *c4 = "abc\ 	
d";

  header("test", "linefeed notation");

  return 0;
}
