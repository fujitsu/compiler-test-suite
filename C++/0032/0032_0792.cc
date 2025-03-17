
#include <stdio.h>
extern "C" int a; 
extern "C" { int b;}
extern "C" { 
  extern "C" int c;
}

int main() { 
   printf("ok\n");}

