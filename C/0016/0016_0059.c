#include <stdio.h>
#include <complex.h>
int main()
{
  float _Complex a,b,c;
  
  a = 50.000f + 4.000fi;
  b = 25.000f + 5.000fi;

  c = a / b;
  if ((crealf(c) - 1.953846) < 0.00001 && (cimagf(c) == -0.230769) < 0.00001){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}
