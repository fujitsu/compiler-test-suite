#include  <stdio.h>

int main()
{
  unsigned int a,b,z,i,y[30];
  b=5;
  a=20;
  i=0;
  do {
    y[i]=0;
    z+=b;
    i++;
  }while(i<a);
  printf("i= %d \n",i);
  if(i==20){
    printf("   ok  \n");
  }
  else {
    printf("   ng  \n");
  }
}
