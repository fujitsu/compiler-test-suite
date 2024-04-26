#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex a,b,c;
  
  a = 50.000f + 4.000fi;
  b = 25.000f + 2.000fi;

  c = a + b;
  if (crealf(c) == 75.0f && cimagf(c) == 6.0f){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}
