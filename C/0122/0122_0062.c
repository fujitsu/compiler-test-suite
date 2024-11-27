#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
int a[10][10][10],b[10][10][10];
int c[10][10][10],d[10][10][10]; 
int e[10][10][10],f[10][10][10]; 
unsigned int i1,i2,i3,i4,i5;

i2=2;
i3=3;
i4=4;
i5=5;

printf("********** 032 TEST START **********\n");

for(i1=0;i1<10;++i1){
  a[i2][i3][i5]=i2*10+i3+i4*10+i5;
  b[2][i3][i5]=i2*10+i3+i4*10+i5;
  c[i2][3][i5]=i2*10+i3+i4*10+i5;
  d[2][3][5]=i2*10+i3+i4*10+i5;
  e[i1][i3][i5]=i2*10+i3+i4*10+i5;
  f[i2][i1][i5]=i2*10+i3+i4*10+i5;
}

if (a[2][3][5]==b[2][3][5] &&
    c[2][3][5]==d[2][3][5] && 
    e[2][3][5]==f[2][3][5] )
  printf("OK\n");
else
  printf("NG\n");
printf("********** 032 TEST  END  **********\n");

exit (0);
} 


