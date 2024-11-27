#include <stdio.h>


int    p = 0;
int main()
{
  long long d;
  d = 2.0;
  if (p < 0){
    d = d + 2;
  }
  d = d + 1;
  printf("%x\n",(int )d);
}
