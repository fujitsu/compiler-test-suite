#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int ssn (volatile long long int **a, long long int *b, long long int c);
int main (void) {
volatile     long long int **a;
             long long int *b;
             long long int c;
 c=1LL; b=&c;a=&b; 
 ssn(a,b,c);
exit (0);
}
int ssn (volatile long long int **a, long long int *b, long long int c)
{
int i,j;
for (j=0; j<2; j++) {
for (i=0; i<2; i++) { 
 **a=**a+c;
}
}
if (**a==5LL) 
       printf("kaimk2050-ok\n");
else   printf("kaimk2050-ng %x %x\n",*(int *)&(**a),*(((int *)&(**a))+1));
}
