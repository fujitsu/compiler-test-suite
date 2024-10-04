#include<stdio.h>
int test1 (void);

 struct tag { int i;  char c; } ;
int 
main (void)
 {

   int i = -1;
   static struct tag st = { -1, 127 };

   printf("*** \n");

   if (test1()!=0)
       printf(" *** \n");
   else
       printf(" *** \n");
printf("\n");
   printf("*** \n");
}

 int 
test1 (void) {
  return 0;
 }

 int 
test2 (int i, struct tag st)
 {
   if (i!=-1 || st.i!=-1 || st.c!=127)
       return 1;
   else
       return 0;
 }
