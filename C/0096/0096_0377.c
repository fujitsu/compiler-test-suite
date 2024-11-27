#include  <stdio.h>
int sub();

int y;
float flx;
int main() {
struct tag {
    int    mema;
    int    memb;
    int    memc[4];
    };
struct tag var1,var2,var3,*pint;
struct tag1 {
    float  b[10];
    char   ch;
    };
struct tag1 var4,*flp;
int a[10];
int x,z;
float ff;
ff=27.5;
z=(int)ff;
printf("%d\n",z);
printf("%d\n",(int)ff);
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
flp=&var4;
sub();
flp->b[1]=flx;
pint->memc[3]=(int)flx;
flx=15.0;
ff=(float)(pint->memc[3]);
if ((int)ff==27) printf(" ok-1\n");
else
printf("%d\n",(int)ff);
y=x;
a[1]=y;
pint->memc[2]=y;
sub();
x=pint->memc[2];
pint->memc[1]=y+x;
if (pint->memc[1]==27) printf(" ok-2\n");
else
printf("%d\n",pint->memc[1]);
pint->memc[2]=y;
y=10;
x=pint->memc[2];
pint->memc[1]=y+x;
if (pint->memc[1]==32) printf(" ok-3\n");
else
printf("%d\n",pint->memc[1]);
}
int sub()
{
y=22;
flx=27.5;
return 0;
}
