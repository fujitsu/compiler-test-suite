#include  <stdio.h>

int main()
{
  int a,b,z,i,sum;
  b=5;
  a=20;
  i=0;
  sum=0;
  while(a>i){
    z=i;
    z+=b;
    i++;
  }
  if(i==20){
    printf("   ok \n");
  }
  else {
    printf("   ng \n");
  }
}
