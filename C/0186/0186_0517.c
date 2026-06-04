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
    a4[i] = i;
    a8[i] = i;
    m4[i] = i;
    m8[i] = i;
  }
  s4 = 0;
  s8 = 0;
  for (i=0;i<10;i++) {
    if (s4 < a4[i])  {
      s4 = a4[i];
    }
    if (s8 < a8[i] ) {
      s8 = a8[i];
    }
  }
  printf("%f %f \n",s4,s8); 
  ms4 = 0;
  ms8 = 0;
  for (i=0;i<10;i++) {
    if (ms4 < m4[i]) {
      ms4 = m4[i];
    }
    if (ms8 < m8[i]) {
      ms8 = m8[i];
    }
  }
  printf("%d %d \n",ms4,ms8); 
}
