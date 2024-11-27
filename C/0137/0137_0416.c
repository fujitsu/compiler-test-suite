#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
#ifdef __STDC__
   int  func01(int);
   int  func02(int);
#else
   int  func01();
   int  func02();
#endif

   int a1,a2,a3,a4,a5;
   a1=a2=2;
   a4 = func01(a1);
   a5 = func02(a2);
   a3=a4-a5;
   if(a3==0)
     printf("***** MPTEST34 OK *****\n");
   else
     printf("***** MPTEST34 NG ***** a3=%d \n",a3);
exit (0);
}

#ifdef __STDC__
int func01(int i)
#else
func01(i)
int i;
#endif
{
   static int rv=0;
   static int s=0;
   s++;
   if(i>=1) rv=func01(--i);
   return(s);
}

#ifdef __STDC__
int func02(int i)
#else
func02(i)
int i;
#endif
{
#ifdef __STDC__
  int func03(int);
#else
  int func03();
#endif
  int rv02;

  rv02=func03(i);
  if(rv02==3) return(rv02);
  return(0);
}

#ifdef __STDC__
int func03(int i)
#else
func03(i)
int i;
#endif
{
#ifdef __STDC__
  int func04(int);
#else
  int func04();
#endif
  int rv03;

  if(i<3){
    rv03 = func04(++i);
    return(rv03);
  }
  return(i);
}

#ifdef __STDC__
int func04(int i)
#else
func04(i)
int i;
#endif
{
#ifdef __STDC__
  int func02(int);
#else
  int func02();
#endif
  int rv04;

  rv04=func02(i);
  return(rv04);
}
