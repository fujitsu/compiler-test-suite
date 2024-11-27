#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
typedef struct {signed char bit:1;} bit_1;
typedef struct {signed char b:1;
                signed char bb:2;
                signed char bbb:3;
                unsigned c:1;
                unsigned cc:2;
                unsigned ccc:3;
                unsigned x:5;
                unsigned u;
                float f;
		} qwe;

bit_1 b[16];
bit_1 bx;

bit_1 bit_on() { bx.bit=1;return bx;}
bit_1 bit_off(){ bx.bit=0;return bx;}
bit_1 bit_ret(bit_1 b){ return b;}
int main(){

qwe t,r;

printf(" start \n");

for(t.x=1;t.x<16;t.x++){
	b[0].bit=t.x;
	if(b[0].bit) b[t.x] = bit_ret( bit_on() );
	else         b[t.x] = bit_ret( bit_off() );
	}

if( (b[0].bit && b[1].bit && b[3].bit && b[5].bit && b[7].bit && b[9].bit && b[11].bit && b[13].bit && b[15].bit)
&&  (b[2].bit==0 && b[4].bit==0 && b[6].bit==0 && b[8].bit==0 && b[10].bit==0 && b[12].bit==0 && b[14].bit==0 ));
else printf("  ng 1\n");

t.b=t.bb=t.bbb=t.c=t.cc=t.ccc=t.u=t.f=1;
r.f=r.u=r.ccc=r.cc=r.c=r.bbb=r.bb=r.b=1;
if(t.b==r.b && (t.bb+r.bb)==0 && (t.bbb+r.bbb)==0 && t.c==r.c && t.cc==r.cc && t.ccc==r.ccc && t.u==r.u && t.f==r.f); else printf("  ng 2\n");

t.b=t.bb=t.bbb=t.c=t.cc=t.ccc=t.u=t.f=255;
r.f=r.u=r.ccc=r.cc=r.c=r.bbb=r.bb=r.b=255;
if(t.b==r.b && r.f==1); else printf("  ng3\n");
printf(" end \n");
exit (0);
}
