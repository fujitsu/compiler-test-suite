
#include  <stdio.h>
int main()
{
  double cksum[5]={0,0,0,0,0};
  float  r4[10]={0,0,0,0,0,0,0,0,0,0};
  int jax,l;

  for( l=0;l<3;l++ ) {
    cksum[1]= cksum[1] + (double)(l+1);
  }
  printf("%f \n",cksum[1]);
  for( l=0;l<7;l++ ) {
    r4[1]= r4[1] + (float)(l+1);
  }
  printf("%f \n",r4[1]);
}
