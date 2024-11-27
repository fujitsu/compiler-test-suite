#include<stdio.h>

int f();
int main() {
 
   printf(" TEST START \n");
 
#pragma ident"aaa"
 
#pragma ident"            \
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
aa                                  \
          "
 
#pragma ident"aaa\
aaaaaaaaaaaaaaaaa"
 
#pragma ident            ""
 
#define macro1 "bbb"
#pragma ident macro1
 
#define macro2  ident"bbb"
#pragma macro1            ""
 
#pragma week  f=g
 
f();
 
 
#pragma week  ccc
 
#pragma week
 
#define macro3    week
#pragma macro3
 
#ident                           "a  "
 
#ident"aaaaaaaaaa"
 
#ident"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

 
#ident    "       aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa     "

 
#ident macro1
 
 
   printf(" TEST ENDED \n");
 
}
int f()
{
   printf("*** o k ***\n");
   return 0;
}
