#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main() {
   int    a,b,c;
   static char c1[]={"item1 ok"};
   static char c2[]={"item1 ng"};
     a=0xa;
     b=0;
     for(c=0;c<13;c=c+2)
       b++;
     b=b+3;
     if(a==b)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
exit (0);
}
