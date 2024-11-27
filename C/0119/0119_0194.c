#include <stdlib.h>
#include <math.h>
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
exit (0);
}
int test0(dim)
char dim[];
{
   register char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test1(dim)
char dim[];
{
   register short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test2(dim)
char dim[];
{
   register long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test3(dim)
char dim[];
{
   register unsigned char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test4(dim)
char dim[];
{
   register unsigned short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test5(dim)
char dim[];
{
   register unsigned long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
}
int test6(dim)
char dim[];
{
   register float i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }
}
int test7(dim)
char dim[];
{
   register double i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }
}
int test8(dim)
char dim[];
{
   int j;
   register int *i;
   i=&j;
   for(*i=0;*i<10;(*i)++) {
     dim[*i] += *i;
   }
}
int test9(dim)
register char *dim;
{
   register int i;
   register int j=0;
   register int k=10;
   for(i=j;i<k;i++) {
     dim[i] += i;
   }
}
int testa(dim)
register char *dim;
{
   register int i;
   register int j=0;
   register int k=10;
   register int l=1;
   for(i=j;i<k;i+=l) {
     register int m=0;
     dim[i] += (i+m);
   }
}
