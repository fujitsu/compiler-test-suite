
int i;
#include "003.h"
#define funcx xxx
#include "003.h"
#undef funcx
#include <stdio.h>
int main(){
  int i=0;
  i++;
  funcx();
  xxx();

  puts("ok");
}
