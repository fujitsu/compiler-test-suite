#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main() {
union tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union tag var2;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
var.memb=4;
x=a[var.mema];
a[1]=x;
if (a[1]==5) printf(" ok  \n");
else
printf(" ng \n");
exit (0);
}
