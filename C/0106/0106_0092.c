#include <stdio.h>
int main()
{
  float a[100],b[100];
  float r4s1,r4s2,r4s3;
  int   ii[100];
  int i,j,m;

  for (i=0;i<100;i++) {
    ii[i] = i;
    a[i] = i;
    b[i] = i;
    if (i-((i/2)*2) == 0) {
      a[i]=0;
      b[i]=0;
    }
  }
  r4s1 = 0;
  r4s2 = 0;
  r4s3 = 0;
  for (i=0;i<100;i++){
    m = ii[i];
      for (j=0;j<m;j++){ 
	if (a[j] != 0) {
          r4s1 =  a[j] +1;
          r4s2 =  a[j] +1;
          r4s3 =  a[j] +1;
	}
      }
  }
  printf("r4s1 = %f \n",r4s1);
  printf("r4s2 = %f \n",r4s2);
  printf("r4s3 = %f \n",r4s3);
  r4s1 = 0;
  r4s2 = 0;
  r4s3 = 0;
  for (i=0;i<100;i++){ 
    r4s1 = 0;
    r4s2 = 0;
    r4s3 = 0;
    m = ii[i];
    for (j=0;j<m;j++){
      if (b[j] != 0) {
	r4s1 =  b[j] +1;
	r4s2 =  b[j] +1;
	r4s3 =  b[j] +1;
      }
    }
  }
  printf("r4s1 = %f \n",r4s1);
  printf("r4s2 = %f \n",r4s2);
  printf("r4s3 = %f \n",r4s3);
  return 0;
}
