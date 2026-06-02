#include <stdio.h>
#include <math.h>
int main()
{
  double  a[11],s;
  int m[4]={0,1,8,11};
  int i,j;
  
  for (i=0;i<11;i++) {
   a[i] = i;
  }  
  for (j=0;j<4;j++) {
    s = 0;
    for (i=0;i<m[j];i++) {
      if (s < a[i]) {
	s = a[i];
      }
    }
    printf("%f \n",s);
  }
}
