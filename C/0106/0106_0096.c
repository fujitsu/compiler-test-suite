#include <stdio.h>
void sub( float r4s1);
int main()
{
  float r4s1;
  r4s1 =0;
  sub(r4s1);
}
void sub( float r4s1)
{
  float a[100],b[100];
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
  for (i=0;i<100;i++){
    m = ii[i];
      for (j=m;j<100;j++){ 
	if (a[j] != 0) {
          r4s1 =  a[j] +1;
	}
      }
  }
  printf("r4s1 = %f \n",r4s1);
  r4s1 = 0;
  for (i=0;i<100;i++){ 
    r4s1 = 0;
    m = ii[i];
    for (j=m;j<100;j++){
      if (b[j] != 0) {
	r4s1 =  b[j] +1;
      }
    }
  }
  printf("r4s1 = %f \n",r4s1);
  return ;
}
