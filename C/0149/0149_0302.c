#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
  {
printf("*** CATEGORY ** TEST **** STARTED \n");
{
  int i=5,f(),a=1,b=1,*p;
  p=&b;
  i=f(a,*p);
  if(i==2)
    printf("*** CATEGORY-01 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-01 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=1,fff();
  i=fff(a,-1);
  if(i==2)
    printf("*** CATEGORY-02 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=1,f1();
  i=f1(a,+1);
  if(i==2)
    printf("*** CATEGORY-03 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,!b);
  if(i==2)
    printf("*** CATEGORY-04 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=-2,f1();
  i=f1(a,~b);
  if(i==2)
    printf("*** CATEGORY-05 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,sizeof(char));
  if(i==2)
    printf("*** CATEGORY-06 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=1,f1();
  i=f1(a,(b));
  if(i==2)
    printf("*** CATEGORY-07 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=0,f1();
  i=f1(a,++b);
  if(i==2)
    printf("*** CATEGORY-08 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,b=2,f1();
  i=f1(a,--b);
  if(i==2)
    printf("*** CATEGORY-09 *****     O    K     *****\n");
  else
    printf("*** CATEGORY-09 *** N G ********** N G ***\n");
}
printf("*** CATEGORY ** TEST **** ENDED \n");
exit (0);
  }
int f(c,d)
int c;
int d;
  {
    if(c==1&d==1)
    {
    c=2;
    return(c);
    }
    else
    return(1);
  }
int fff(a,b)
int a,b;
{
if(a==1&b==-1)
return(2);
else
return(0);
}
int f1(a,b)
int a;
int b;
{
if(a==1&b==1)
return(2);
else
return(0);
}
