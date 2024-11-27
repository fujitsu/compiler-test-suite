#include <stdio.h>
long double sub(long double c)
{
  if(c==5.0)
    return 1.0;
  else
    return 0.0;
}
int main()
{
  long double a=1.0,b=0.0,c=1.0; 
  int i;
  for(i=0;i<10;i++){
    if(sub(c)) break;
    else if(a==0.0 && b==1.0)
      c+=1;
    else
      a=0.0;b=1.0;
  }
  if(c==5.0)
    printf("ok\n");
  else
    printf("ng c=%Lf\n",c);
}

