#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex a,c;
  float b;
  
  a = 50.000f + 3.000fi;
  b = 10.000f;

  c = a - b;
  if (crealf(c) == 40.0f && cimagf(c) == 3.0f){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}
