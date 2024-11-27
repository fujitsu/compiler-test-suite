#include  <stdio.h>
int sub (int *x);
char      ch[3];
int main (void)
{
   int i,c;
   char *a;
   char *b;
   printf("    str\n");
   i = 1;
   sub(&c);
   while(i!=3)
   {
      a=b=ch;
      *a=*(b+1)+i;
      i=i+c/5;
   }
   *a=*a;
   *a=ch[c/5];
   if(i==3)
         printf("     ok| \n");
   else
         printf("     ng| \n");
   printf("******  end  \n");
}

int sub(x)
int *x;
{
   *x=5;
   return 0;
}
