#include<stdio.h>
int main()
  {
printf("*** \n");
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i==sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i!=sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=4;
  i=i&&sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
  int i=4;
  i=i||sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i/sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i%sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
  int i=1;
  i=i<<sizeof(int);
#if INT64
  if(i==256)
#else
  if(i==16)
#endif
    printf("*** \n");
}
{
#if INT64
  int i=256;
#else
  int i=16;
#endif
  i=i>>sizeof(int);
  if(i==1)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i^sizeof(int);
  if(i==0)
    printf("*** \n");
}
{
#if INT64
  int i=8;
#else
  int i=4;
#endif
  i=i|sizeof(int);
#if INT64
  if(i==8)
#else
  if(i==4)
#endif
    printf("*** \n");
}
printf("*** \n");
  }
