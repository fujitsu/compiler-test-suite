#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int flag=0;
  int i,c,a,b;
  a=20;
  b=53;
  a=3;
  b=1;
  c=60;
  c=3;
  i=0;
  while(1){
    if(i==2){
      flag=1;
      goto switchsentence ;
    }
    i++;
  }
  switchsentence:;
  for(i=0 ; i<5 ; i++){
    if(i<4){
      continue;
    }
    flag++;
  }
  flag++;
  switch(c){
    case 0:
           b=a;
           break;
    case 1:
           if(b>10)
             flag+=10;
           break;
    case 2:
           flag+=20;
           break;
    case 3:
           flag++;
           if(c<120){
             flag++;
           }
           break;
    }
  if(b<3){
    flag++;
    if(flag>10){
      flag+=20;
    }
    else {
      flag++;
    }
  }
  a=2;
  b=50;
  c=333;
  if(flag==7)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
exit (0);
}
