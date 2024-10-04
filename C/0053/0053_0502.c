#include<stdio.h>
#if INT64
#define int __int32
#endif
int main()
  {
printf("*** \n");
{
  int i=16;
  i>>=sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
  int i=1;
  i<<=sizeof(int);
  if(i==16)
    printf("*** \n");
}
{
  int i=1;
  i&=sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=1;
  i^=sizeof(int);
  if(i==5)
    printf("*** \n");
}
{
  int i=1;
  i|=sizeof(int);
  if(i==5)
    printf("*** \n");
}
{
  int i=1;
  i=sizeof(int);
  if(i==4)
    printf("*** \n");
}
{
  int i=1;
  i=-sizeof(int);
  if(i==-4)
    printf("*** \n");
}
{
  int i=1;
  i=(i==1)?sizeof(int):0;
  if(i==4)
    printf("*** \n");
}
{
  int i=1;
  i=(i==2)?0:sizeof(int);
  if(i==4)
    printf("*** \n");
}
{
  int i=1;
  i=(sizeof(int));
  if(i==4)
    printf("*** \n");
}
printf("*** \n");
  }
