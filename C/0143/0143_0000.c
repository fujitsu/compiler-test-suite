#include <stdio.h>
#include <float.h>

union tag2 {
  float       r4;
  double      r8;
} un1,un2;

union tag2 sub(){
  un1.r8=-987654321;
  return un1;
}
int main(){
  un2 =sub();
  if(un2.r8 == -987654321.000000)
    puts("ok");
  else
    puts("ng");
}
