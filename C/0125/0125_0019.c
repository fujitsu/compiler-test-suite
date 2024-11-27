#include<stdio.h>
 
   #define  fn(x)  <stdio.h>
   #include  fn(1)
void sub1()
{
   #ifdef  EOF
      printf(" *** O K (43-09) ***  \n");
   #else
      printf(" === N G (43-09) ===  \n");
   #endif
}

   #define  mn  <ctype.h>
   #include  mn
void sub2()
{
   #ifdef  isalnum
      printf(" *** O K (43-13) ***  \n");
   #else
      printf(" === N G (43-13) ===  \n");
   #endif
}

int main() {
 
int  f = 0;
 
   printf(" TEST START \n");
 
 
#define  f() 100
   if (f == 0)
      printf(" *** O K (43-01) ***  \n");
   else
      printf(" === N G (43-01) ===  \n");
 
#undef  f
#define  f(x)  100
   if (f (1) == 100)
      printf(" *** O K (43-02) ***  \n");
   else
      printf(" === N G (43-02) ===  \n");
 
if (f
(1)  == 100)
      printf(" *** O K (43-03) ***  \n");
else
      printf(" === N G (43-03) ===  \n");
 
if (f /*abcdefghijklmn327864*/ (1) == 100)
      printf(" *** O K (43-04) ***  \n");
else
      printf(" === N G (43-04) ===  \n");
 
if (f /*akdjhrlugriuckvjnljkdlaur;aurg
kdjfhkuarha*/ (1)  == 100)
      printf(" *** O K (43-05) ***  \n");
else
      printf(" === N G (43-05) ===  \n");
 
if (f(1) == 100)
      printf(" *** O K (43-06) ***  \n");
else
      printf(" === N G (43-06) ===  \n");
 
#if  f(1) == 100
      printf(" *** O K (43-07) ***  \n");
#else
      printf(" === N G (43-07) ===  \n");
#endif
 
#if  0
      printf(" === N G (43-08)A===  \n");
#elif  f(1) == 100
      printf(" *** O K (43-08) ***  \n");
#else
      printf(" === N G (43-08)B===  \n");
#endif
 
{
  sub1();
}
 
#line  f(1)
   #if  __LINE__ == 100
      printf(" *** O K (43-10) ***  \n");
   #else
      printf(" === N G (43-10) ===  \n");
   #endif
 
#define  m  200
 
#if  m == 200
      printf(" *** O K (43-11) ***  \n");
#else
      printf(" === N G (43-11) ===  \n");
#endif
 
#if  0
      printf(" === N G (43-12)A===  \n");
#elif  m == 200
      printf(" *** O K (43-12) ***  \n");
#else
      printf(" === N G (43-12)B===  \n");
#endif
 
{
  sub2();
}
 
#line  m
   #if  __LINE__ == 200
      printf(" *** O K (43-14) ***  \n");
   #else
      printf(" === N G (43-14) ===  \n");
   #endif
 
if (m == 200)
      printf(" *** O K (44-01) ***  \n");
else
      printf(" === N G (44-01) ===  \n");
 
   printf(" TEST END \n");
 
  return 0;
}
