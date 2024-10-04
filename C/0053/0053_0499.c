#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int i=4,a=-2;
  i=(i==4)?~a:0;
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=-2;
  i=(i==5)?0:~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=-2;
  i=(~a);
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=-2;
  i=+~a;
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=-3;
  i=(++a,~a);
  if(i==1)
    printf("*** \n");
}
{
  int i=4,a=-3;
  sizeof(int);
#if INT64
  if(i==sizeof(__int32))
#else
  if(i==sizeof(int))
#endif
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i<sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=4;
  i=i<=sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
  int i=4;
  i=i>sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i>=sizeof(int);
  if(i==1)
    printf("*** \n");
}
printf("*** \n");
  }
