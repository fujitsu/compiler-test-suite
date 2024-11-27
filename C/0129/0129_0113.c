#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main()
{
  int flag=0;
  int i=0;
  int c=3;
  int hs=3;
  while(1){
    if(i==2){
      flag=1;
      goto switchsentence ;
    }
    i++;
  }
  switchsentence:;
  flag++;
  printf("flag=%d\n",flag);
  printf("c   =%d\n",c);
  switch(c){
    case 0:break;
    case 1:
           flag+=5;
           break;
    case 2:
           flag+=3;
           break;
    case 3:
           flag++;
           printf("flag=%d\n",flag);
           break;
    }
  if(flag==3)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
    printf("flag=%d\n",flag);
exit (0);
}
