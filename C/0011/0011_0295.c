#include  <stdio.h>
int testa(register char *dim);
int test9(register char *dim);
int test8(char dim[]);
int test7(char dim[]);
int test6(char dim[]);
int test5(char dim[]);
int test4(char dim[]);
int test3(char dim[]);
int test2(char dim[]);
int test1(char dim[]);
int test0(char dim[]);

int main()
{
    char dim[10];
    int i;
    for(i=0;i<10;i++) dim[i] = 0;
    test0(dim);
    test1(dim);
    test2(dim);
    test3(dim);
    test4(dim);
    test5(dim);
    test6(dim);
    test7(dim);
    test8(dim);
    test9(dim);
    testa(dim);
    if( dim[1] == 11 ) {
      puts(" OK ");
    }
    else {
      puts(" OK ");
    }
}
int test0(char dim[])
{
   register char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test1(char dim[])
{
   register short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test2(char dim[])
{
   register long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test3(char dim[])
{
   register unsigned char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test4(char dim[])
{
   register unsigned short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test5(char dim[])
{
   register unsigned long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }

   return 0;
}
int test6(char dim[])
{
   register float i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }

   return 0;
}
int test7(char dim[])
{
   register double i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }

   return 0;
}
int test8(char dim[])
{
   int j;
   register int *i;
   i=&j;
   for(*i=0;*i<10;(*i)++) {
     dim[*i] += *i;
   }

   return 0;
}
int test9(register char dim[])
{
   register int i;
   register int j=0;
   register int k=10;
   for(i=j;i<k;i++) {
     dim[i] += i;
   }

   return 0;
}
int testa(register char dim[])
{
   register int i;
   register int j=0;
   register int k=10;
   register int l=1;
   for(i=j;i<k;i+=l) {
     register int m=0;
     dim[i] += (i+m);
   }

   return 0;
}
