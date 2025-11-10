#include<stdio.h>

#include <stdio.h>
void sub1()
{
 #ifdef EOF
   printf(" *** O K (21-01) *** \n");
 #else
   printf(" *** N G (21-01) *** \n");
 #endif
}

#include "020.h"
void sub2()
{
 #ifdef ABCD
   printf(" *** O K (21-02) *** \n");
 #else
   printf(" *** N G (21-02) *** \n");
 #endif
}
#undef EOF

#define inc1 <ctype.h>
 #include inc1
void sub3()
{
 #ifdef isalnum
   printf(" *** O K (21-03) *** \n");
 #else
   printf(" *** N G (21-03) *** \n");
 #endif
}
#undef ABCD

#define inc2 "020.h"
 #include inc2
void sub4()
{
 #ifdef ABCD
   printf(" *** O K (21-04) *** \n");
 #else
   printf(" *** N G (21-04) *** \n");
 #endif
}

int main() {
 
   printf(" TEST START \n");
 
{
  sub1();
}
 
  sub2();
 
{
  sub3();
}
 
  sub4();
 
   printf(" TEST END \n");
 
  return 0;
}
