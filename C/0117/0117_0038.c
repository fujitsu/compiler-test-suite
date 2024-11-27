#include <stdio.h>
int main()
{
  int a=1,b=0,c=1; 
  int i=0;
  while(i<10){
    if(a==0 && b==1)
      c+=1;
    else{
      a=0;
      b=1;
    }
    i++;
  }

  if(c==10)
    printf("ok\n");
  else
    printf("ng\n c=%d\n",c);
}
