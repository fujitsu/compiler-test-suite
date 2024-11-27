#include  <stdio.h>

int main() {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[12];
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
a[*i]=*i;
if (z==10) printf(" ok\n");
else
printf(" ng\n");
if (pint->mema==3) printf(" ok\n");
else
printf(" ng\n");
if (a[*i]==10) printf(" ok\n");
else
printf(" ng\n");
}
