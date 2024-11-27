#include <stdio.h>
int main()
{
  int a=1,b=0,c=1; 
  int i;
  for(i=0;i<10;i++){
    if(a==0 && b==1)
      c+=1;
    else{
      b=1;
      a=0;
    }
  }
  if(c==10)
    printf("ok\n");
  else
    printf("ng\n c=%d\n",c);
}
