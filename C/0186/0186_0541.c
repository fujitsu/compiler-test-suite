#include <stdio.h>
#include <math.h>

int main()
  {
  float  a4[10],s4;
  double a8[10],s8;
  int    m4[10],ms4;
  long int  m8[10],ms8;
  int i;
  
  for (i=0;i<10;i++) {
    a4[i] = i+1;
    a8[i] = i+1;
    m4[i] = i+2;
    m8[i] = i+3;
  }
  s4 = 1;
  s8 = 2;
  for (i=0;i<10;i++) {
    s4 = s4 * a4[i];
    s8 = s8 * a8[i];
  }
  printf("%f %f \n",s4,s8); 
  ms4 = 2;
  ms8 = 1;
  for (i=0;i<10;i++) {
    ms4 = ms4 * m4[i];
    ms8 = ms8 * m8[i];
  }
  printf("%d %d \n",ms4,ms8); 
}
