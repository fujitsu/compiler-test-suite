#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
 static int    fun1();
 static void   ok();
 int    a;
int main() {
   int    b;
   void   ng();
     a=10;
     b=fun1(a);
     if(a==b)
       {
         ok();
       }
     else
       {
         ng();
       }
exit (0);
 }
 static int fun1() {
     return(a);
 }
 static void ok() {
   static char c1[]={"ok"};
     printf("%s\n",c1);
 }
 void ng() {
   static char c2[]={"ng"};
     printf("%s\n",c2);
 }
