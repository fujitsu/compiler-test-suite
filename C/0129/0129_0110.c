#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main() {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y;
var.mema=5;
pint=&var2;
pint->memc[3]=0.5;
pint->mema=3;
y=pint->mema;
x=(int)(pint->memc[3]);
a[1]=x+y;
if (a[1]==3) printf(" ok\n");
else
printf(" ng\n");
exit (0);
}
