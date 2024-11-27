#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define  a(x)     # x
   if (!memcmp(a(x/**/y) , "x y" , 3))
      printf(" *** O K (08-01) ***  \n");
   else
      printf(" === N G (08-01) ===  \n");
 
if (!memcmp(a(x/*12345678901234567890*/y) , "x y" , 3))
      printf(" *** O K (08-02) ***  \n");
else
      printf(" === N G (08-02) ===  \n");
 
if (!memcmp(a(x/*\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst*/y) , "x y" , 3))
      printf(" *** O K (08-03) ***  \n");
else
      printf(" === N G (08-03) ===  \n");
 
if (!memcmp(a(x/*\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst\
abcdefghijklmnopqrst1234567890abcdefghijklmnopqrst*/y) , "x y" , 3))
      printf(" *** O K (08-04) ***  \n");
else
      printf(" === N G (08-04) ===  \n");
 
if (!memcmp(a(x/*aaaaaaaaaaaaaaaaaaaa*/y) , "x y" , 3))
      printf(" *** O K (08-05) ***  \n");
else
      printf(" === N G (08-05) ===  \n");
 
 
   printf(" TEST END \n");
}
