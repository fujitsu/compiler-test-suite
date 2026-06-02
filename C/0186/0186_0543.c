#include <stdio.h>
#include <math.h>
int main()
{
  double  a[11],s;
  int m[4]={0,1,8,11};
  int i,j;
  
  for (i=0;i<11;i++) {
   a[i] = i+2;
  }  
  for (j=0;j<4;j++) {
    s = 1;
    for (i=0;i<m[j];i++) {
      s = s * a[i];
    }
    printf("%f \n",s);
  }
}
