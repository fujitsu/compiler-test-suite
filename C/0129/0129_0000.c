#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
typedef union {
	struct {
		unsigned char a :4;
		unsigned char d :4;
	} a;
	struct {
		unsigned char d:4;
		unsigned char a:4;
	} b;
} t;
t ch[16];
typedef enum {X0='0',X1,X2,X3,X4,X5,X6,X7,X8,X9,XA='A',XB,XC,XD,XE,XF} HEX;
#ifdef __STDC__
HEX compare(t);
#else
HEX compare();
#endif
int i;
int main(){
	void init(),cal();

	printf(" start \n");
	ch[15].b.a=0xff;
	init(ch);
	cal(ch);
	for(i=0;i<16;i++)
		switch(compare(ch[i])){
		case X0:if(i==0) continue;
		case X1:if(i==1) continue;
		case X2:if(i==2) continue;
		case X3:if(i==3) continue;
		case X4:if(i==4) continue;
		case X5:if(i==5) continue;
		case X6:if(i==6) continue;
		case X7:if(i==7) continue;
		case X8:if(i==8) continue;
		case X9:if(i==9) continue;
		case XA:if(i==10) continue;
		case XB:if(i==11) continue;
		case XC:if(i==12) continue;
		case XD:if(i==13) continue;
		case XE:if(i==14) continue;
		case XF:if(i==15) continue;
		default:printf(" NG %d\n",i);
		}
	printf(" end \n");
exit (0);
}
#ifdef __STDC__
void init(t *ch)
#else
void init(ch) t *ch;
#endif
{
	ch[ 0].a.a=ch[ 0].b.a=ch[ 1].a.a=ch[ 1].b.a=
	ch[ 2].a.a=ch[ 2].b.a=ch[ 3].a.a=ch[ 3].b.a=
	ch[ 4].a.a=ch[ 4].b.a=ch[ 5].a.a=ch[ 5].b.a=
	ch[ 6].a.a=ch[ 6].b.a=ch[ 7].a.a=ch[ 7].b.a=
	ch[ 8].a.a=ch[ 8].b.a=ch[ 9].a.a=ch[ 9].b.a=
	ch[10].a.a=ch[10].b.a=ch[11].a.a=ch[11].b.a=
	ch[12].a.a=ch[12].b.a=ch[13].a.a=ch[13].b.a=
	ch[14].a.a=ch[14].b.a=ch[15].a.a=ch[15].b.a;
}

void cal(ch) t *ch;
{
	void sub();

	for (i=0;i<16;i++,ch++) ch->a.a-=15-i;
	sub(ch-16);
}

#ifdef __STDC__
void sub(t *ch){
#else
void sub(ch)t *ch;{
#endif
	t *c=ch;
	switch("0123456789ABCDEF"[ch->b.a]){
	case XF:ch->b.a--; ch++;
	case XE:ch->b.a--; ch++;
	case XD:ch->b.a--; ch++;
	case XC:ch->b.a--; ch++;
	case XB:ch->b.a--; ch++;
	case XA:ch->b.a--; ch++;
	case X9:ch->b.a--; ch++;
	case X8:ch->b.a--; ch++;
	case X7:ch->b.a--; ch++;
	case X6:ch->b.a--; ch++;
	case X5:ch->b.a--; ch++;
	case X4:ch->b.a--; ch++;
	case X3:ch->b.a--; ch++;
	case X2:ch->b.a--; ch++;
	case X1:ch->b.a--; ch++; ch->b.a--; sub(c);
	case X0:return;
	}
	printf(" NG sub\n");
}

#ifdef __STDC__
HEX compare(t ch){
#else
HEX compare(ch)t ch;{
#endif
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==0) return X0;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==1) return X1;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==2) return X2;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==3) return X3;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==4) return X4;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==5) return X5;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==6) return X6;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==7) return X7;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==8) return X8;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==9) return X9;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==10) return XA;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==11) return XB;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==12) return XC;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==13) return XD;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==14) return XE;
if(((ch.a.a+ch.a.d+ch.b.a+ch.b.d)/4)==15) return XF;
printf("NG compare %d\n",ch.a.a+ch.a.d+ch.b.a+ch.b.d);
}
