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
          if (r4==ar4)      printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r8  = r4 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r8  = r4 ;
          if (r16 ==ar16)   printf("**\n");
          else              printf("**\n",r16);
}
{
 r4  = r16 = r4 ;
          if (r4 ==ar4)     printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r16  = r4 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r16  = r4 ;
           if (r16 ==ar16 ) printf("**\n");
          else              printf("**\n",r16);
}
{
          r8=2.0;
          ar4=2.0;
          ar8=2.0;
          ar16=2.0;
}
{
 r4  = r4  = r8 ;
          if (r4==ar4)      printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r4  = r8 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r4  = r8 ;
          if (r16 ==ar16)   printf("**\n");
          else              printf("**\n",r16);
}
{
 r4  = r16 = r8 ;
          if (r4 ==ar4)     printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r16  = r8 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r16  = r8 ;
           if (r16 ==ar16 ) printf("**\n");
          else              printf("**\n",r16);
}
{
          r16=3.0;
          ar4=3.0;
          ar8=3.0;
          ar16=3.0;
}
{
 r4  = r4  = r16 ;
          if (r4==ar4)      printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r4  = r16 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r4  = r16 ;
          if (r16 ==ar16)   printf("**\n");
          else              printf("**\n",r16);
}
{
 r4  = r8 = r16 ;
          if (r4 ==ar4)     printf("**\n");
          else              printf("**\n",r4);
}
{
 r8  = r8  = r16 ;
          if (r8 ==ar8 )    printf("**\n");
          else              printf("**\n",r8);
}
{
 r16 = r8  = r16 ;
           if (r16 ==ar16 ) printf("**\n");
          else              printf("**\n",r16);
}
}
