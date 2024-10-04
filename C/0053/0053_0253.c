#include<stdio.h>
int main()
  {
printf("*** \n");
{
  int   volatile   a=1;
  int   volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int   volatile   a=1;
  int   const   b=2;
  a+=b;
  if(a==3)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int   volatile   a=1;
  int   volatile const   b=2;
  a+=b;
  if(a==3)
    printf("*** \n");
  else
    printf("*** \n");
}
{
  int   volatile   a=1;
  int   const volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** \n");
  else
    printf("*** \n");
}
printf("*** \n");
  }
