#include<stdio.h>
#if(!__GNUC__)
static int a;
#endif
extern int a=10;
int main()
{
  if( a==10 )
   printf(" TEST OK \n");
  else
   printf(" TEST NG = %d \n",a);
}
