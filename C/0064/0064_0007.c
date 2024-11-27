#include <stdlib.h>
#include <stdio.h>


double d11[10][3][2]={ 1,1,1,1,1,1,1,1,1,1,1,1,
                       2,2,2,2,2,2,2,2,2,2,2,2,
                       -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
                       4,4,4,4,4,4,4,4,4,4,4,4,
                       8,8,8,8,8,8,9,9,9,9,9,9};
long double       q10[10],q11[10][2];
unsigned long int l11[10]={ 1,1,0,0,1,1,0,0,1,1};
int main()
{
  long int i,j,k,I,J,K;
  long int N2=2;
  long int N3=3;
  long int N10=10;
  double   D1=0,D2=0;
  long int i3;
  float    R10S=0,D10S=0,D11S,D12S,D13S=0;

  for(i3=1;i3<10;i3++)
  {
    if (l11[i3]){
      D1=d11[i3][0][0];
    }
    else{
      D2=-d11[i3][0][0];
    }
    printf("D1 = %g  D2 = %g \n",D1,D2);
    q10[i3]=D1+2*D2;
  }
  for(i=1;i<10;i++){
    printf("  q10[%d]  =  %g \n",i,(double)q10[i]);
  }
  exit (0);
}
