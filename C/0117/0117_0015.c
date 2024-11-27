#include <stdio.h>
long long int sub(long long int c)
{
  if(c==5)
    return 1;
  else
    return 0;
}
int main()
{
  long long int a=1,b=0,c=1; 
  int i;
  for(i=0;i<10;i++){
    if(sub((int)c)) break;
    else if(a==0 && b==1)
      c+=1;
    else
      a=0;b=1;
  }
  if(c==5)
    printf("ok\n");
  else
    printf("ng c=%lld\n",c);
}

