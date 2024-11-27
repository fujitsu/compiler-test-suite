#include  <stdio.h>

int main()
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  a=2;
  if(c>=5){
    a++;
  }
  while(i<3){
    j=0;
    while(j<=2){
      b=a+j;
      flag++;
      j++;
    }
    flag--;
    i++;
  }
  if(flag==6){
    printf("*****   ok   *****\n");
  }
  else {
    printf("*****   ng   *****\n");
  }
  a=20;
  b=30;
}
