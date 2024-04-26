#include  <stdio.h>

struct num {
    int i1,i2;
    char word[5];
};
int main()
{
   struct num nfunc(),st;

   st = nfunc();
   if(st.i1 == 123)
      printf("*** o    k **\n");
   else
      printf("*** n    g **\n");
}

struct num nfunc()
{
   struct num lst;
   
   lst.i1 = 123;
   return lst;
}
