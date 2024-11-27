#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


int main() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
pint=&var;
var.memb=4;
x=pint->memb;
a[1]=x;
pint->memc[1]=x;
if (pint->memc[1]==4) printf(" ok\n");
else
printf(" ng\n");
exit (0);
}
