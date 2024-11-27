#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct num {
    int i1,i2;
    char words[5];
};
int main()
{
   struct num nfunc(),st;

   st = nfunc();
   if(st.i1 == 123)
      printf("*** scouts01 ***  o    k **\n");
   else
      printf("*** scouts01 ***  n    g **\n");
exit (0);
}

struct num nfunc()
{
   struct num last;
   
   last.i1 = 123;
   return last;
}
