#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main( ) {
      float       ar4;
      double      ar8;
      long double ar16;
      float       r4;
      double      r8;
      long double r16;

{
          r4=1.0;
          ar4=1.0;
          ar8=1.0;
          ar16=1.0;
}
{
 r4  = r8  = r4 ;
          if (r4==ar4)      printf("**(01)** OK\n");
          else              printf("**(01)** NG r4=%d\n",r4);
}
{
 r8  = r8  = r4 ;
          if (r8 ==ar8 )    printf("**(02)** OK\n");
          else              printf("**(02)** NG r8=%d\n",r8);
}
{
 r16 = r8  = r4 ;
          if (r16 ==ar16)   printf("**(03)** OK\n");
          else              printf("**(03)** NG r16=%d\n",r16);
}
{
 r4  = r16 = r4 ;
          if (r4 ==ar4)     printf("**(04)** OK\n");
          else              printf("**(04)** NG r4=%d\n",r4);
}
{
 r8  = r16  = r4 ;
          if (r8 ==ar8 )    printf("**(05)** OK\n");
          else              printf("**(05)** NG r8=%d\n",r8);
}
{
 r16 = r16  = r4 ;
           if (r16 ==ar16 ) printf("**(06)** OK\n");
          else              printf("**(06)** NG r16=%d\n",r16);
}

{
          r8=2.0;
          ar4=2.0;
          ar8=2.0;
          ar16=2.0;
}
{
 r4  = r4  = r8 ;
          if (r4==ar4)      printf("**(07)** OK\n");
          else              printf("**(07)** NG r4=%d\n",r4);
}
{
 r8  = r4  = r8 ;
          if (r8 ==ar8 )    printf("**(08)** OK\n");
          else              printf("**(08)** NG r8=%d\n",r8);
}
{
 r16 = r4  = r8 ;
          if (r16 ==ar16)   printf("**(09)** OK\n");
          else              printf("**(09)** NG r16=%d\n",r16);
}
{
 r4  = r16 = r8 ;
          if (r4 ==ar4)     printf("**(10)** OK\n");
          else              printf("**(10)** NG r4=%d\n",r4);
}
{
 r8  = r16  = r8 ;
          if (r8 ==ar8 )    printf("**(11)** OK\n");
          else              printf("**(11)** NG r8=%d\n",r8);
}
{
 r16 = r16  = r8 ;
           if (r16 ==ar16 ) printf("**(12)** OK\n");
          else              printf("**(12)** NG r16=%d\n",r16);
}

{
          r16=3.0;
          ar4=3.0;
          ar8=3.0;
          ar16=3.0;
}
{
 r4  = r4  = r16 ;
          if (r4==ar4)      printf("**(13)** OK\n");
          else              printf("**(13)** NG r4=%d\n",r4);
}
{
 r8  = r4  = r16 ;
          if (r8 ==ar8 )    printf("**(14)** OK\n");
          else              printf("**(14)** NG r8=%d\n",r8);
}
{
 r16 = r4  = r16 ;
          if (r16 ==ar16)   printf("**(15)** OK\n");
          else              printf("**(15)** NG r16=%d\n",r16);
}
{
 r4  = r8 = r16 ;
          if (r4 ==ar4)     printf("**(16)** OK\n");
          else              printf("**(16)** NG r4=%d\n",r4);
}
{
 r8  = r8  = r16 ;
          if (r8 ==ar8 )    printf("**(17)** OK\n");
          else              printf("**(17)** NG r8=%d\n",r8);
}
{
 r16 = r8  = r16 ;
           if (r16 ==ar16 ) printf("**(18)** OK\n");
          else              printf("**(18)** NG r16=%d\n",r16);
}
exit (0);
}
