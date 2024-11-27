#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub();


int y;
int main() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
pint->mema=5;
pint->memb=15;
a[4]=5;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
sub();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf(" ok\n");
else
printf("%d\n",pint->memc[1]);
exit (0);
}
int sub()
{
y=22;
return 0;
}
