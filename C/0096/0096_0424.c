#include  <stdio.h>
int func();

int     ga;
int main()
{
  int   a,b,c,d,i;
  int   fff(),(*fp)(),ii;

  fp=fff;i=0;
  ii=(*fp)(i);

  ga=1;
  printf("*** start  ***\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
                    
    a=b+c;         
    if(i<1)
    {
      i=func();    
      d=b+c;       
    }
  }
  if(a==2&&d==2)
    printf("       ok\n");
  else {
    printf("       ng a=%d(0)\n",a);
    printf("                  d=%d(0)\n",d);
  }
  printf("*** end    ***\n");
}
int func()
{
  return 1;
}
int fff()
{
  return 1;
}
