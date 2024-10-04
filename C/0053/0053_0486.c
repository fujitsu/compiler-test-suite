#include <stdio.h>
int main()
  {
printf("* \n");
{
  int i=2,a=1;
  i= !+a;
  if(i==0)
    printf("*** \n");
}
{
  int i=2,a=1;
  i= ~ +a;
  if(i==-2)
    printf("*** \n");
}
{
  int i=2,a=1;
  i=(i<3)?+a:0;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i=(i<2)?0:+a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i=(+a);
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=1;
  i=(++a)+1;
  if(i==3)
    printf("*** \n");
}
{
  int i=2,a=-1;
  i=+ +a;
  if(i==-1)
    printf("*** \n");
}
{
  int i=2,a=-1;
  i=i++ + a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=-1;
  i=i-- + a;
  if(i==1)
    printf("*** \n");
}
{
  int i=2,a=-1,b=1;
  b=(i=++i,+i==a);
  if(b==0)
    printf("*** \n");
}
printf("*** \n");
  }
