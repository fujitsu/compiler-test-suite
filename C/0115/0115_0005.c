#include <stdio.h>

#pragma pack(4)

struct TAG1 {
  char c;
  double x;
} st1;

#pragma pack(8)

struct TAG2 {
  char c;
  double x;
} st2;

void foo()
{
  if( st1.x == 1.0 && st2.x == 1.0 ) {
    puts("OK");
  } else {
    puts("nG");
  }
}

int main()
{
  int addr; 
  st1.x = 1.0;
  st2.x = 1.0;
  addr = (int )&st1;
  if( (int)&st1.x - addr != 4 ) {
    puts("NG1");
  }
  addr = (int )&st2;
  if( (int)&st2.x - addr != 8 ) {
  }
  foo();
}

