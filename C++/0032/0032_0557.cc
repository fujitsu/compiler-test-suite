#include <stdio.h>
#include <memory.h>
 
typedef struct {
	unsigned int high,low;
} U64;
 
typedef struct {
	unsigned int high,low;
	unsigned int grk;
} U64x;

typedef struct {
	unsigned int high,hmiddle,lmiddle,low;
} U128;

typedef struct {
	unsigned int high,hmiddle,lmiddle,low;
	unsigned int grk;
} U128x;

typedef struct {
	unsigned short int  s : 1;
	unsigned short int  e :15;
	short               dummy[3];
	U64               f;
} long_double;

int
U128_sub  ( U128x	,U64x	,U128x * );
void  U64_div   ( U64x	,U64x	,U64x * );
void  b_xdiv( long_double *,long_double *,long_double *);

int U128_sub(U128x a, U64x b, U128x *c)
{
int underflow=0;

	if( a.grk < b.grk )  {
		if( a.low < 1 ) underflow=1;
		c->low = a.low-1;
	} else
		c->low = a.low;
	c->grk = a.grk-b.grk;

	if( c->low < b.low || underflow )  {
		underflow=0;
		if( a.lmiddle < 1 ) underflow=1;
		c->lmiddle = a.lmiddle-1;
	} else
		c->lmiddle = a.lmiddle;
	c->low-= b.low;

	if( c->lmiddle < b.high || underflow ) {
		underflow=0;
		if( a.hmiddle < 1 ) underflow=1;
		c->hmiddle = a.hmiddle-1;
	} else
		c->hmiddle = a.hmiddle;
	c->lmiddle-=b.high;

	if( underflow ) {
		underflow=0;
		if( a.high < 1 ) underflow=1;
		c->high = a.high-1;
	} else
		c->high = a.high;

	return underflow;
}

void U64_div(U64x a,U64x b,U64x *c)
{
	U128x a2,a3;
	U64x bit;

	bit.low=0;
	bit.grk=0;

	a2.high=0;
	a2.hmiddle=0;
	a2.lmiddle=a.high;
	a2.low=a.low;
	a2.grk=a.grk;
	c->high=0;
	c->low=0;
	c->grk=0;

#if 1
	U128_sub( a2, b, &a3 );
#else
	for( i=0; i<96; i++ ) { 
		if( U128_sub( a2, b, &a3 )==0 ) {
			a2=a3;
			U64_add( *c, bit, c );
		}
		U64_half( &bit );
		U128_twice( &a2 );
	}
#endif
}	



void b_xdiv(long_double  *a, long_double *b , long_double *c )
{
	U64x  aFx,bFx,cFx;
	int   a_Inf=0, b_Inf=0, a_Zero=0, b_Zero=0;
	int   sign=0;
	long  e=0;

	long_double aa,bb;
	static long_double Inf={ 0, 0x7fff, {0,0,0}, { 0, 0 } };
	static long_double Zero={ 0, 0, {0,0,0}, { 0, 0 } };
	static long_double NaN={ 0, 0x7fff, {0,0,0}, { 0xffffffff, 0xffffffff } };
	aa=*a;
	bb=*b;
	memset(aa.dummy,0,sizeof(aa.dummy));
	memset(bb.dummy,0,sizeof(bb.dummy));
	memset(c->dummy,0,sizeof(aa.dummy));
	sign = aa.s^bb.s;
	
	if( bb.e == 32767 ) {
		if( (bb.f.high & 0x7fffffff) || bb.f.low ) {  
			c->s=bb.s; 
			c->e=bb.e;
			c->f.high=bb.f.high|0x40000000;
			c->f.low=bb.f.low;
			return;
			}
		b_Inf=1;
	} else  if( bb.f.high==0 && bb.f.low==0 ) 
		b_Zero=1;

	if( aa.e == 32767 ) {
		if( (aa.f.high & 0x7fffffff) || aa.f.low ) {  
			c->s=sign; 
			c->e=aa.e;
			c->f.high=aa.f.high|0x40000000;
			c->f.low=aa.f.low;
			return;
			}
		a_Inf=1;
	} else  if( aa.f.high==0 && aa.f.low==0 ) 
		a_Zero=1;


	if( b_Zero ) {
		if( a_Zero ) *c=NaN;
		else {
			*c=Inf;
			c->s=sign;
		}
		return ;
	}
	if( b_Inf || a_Zero ) {
		if( a_Inf ) *c= NaN;
		else {
			*c=Zero;
			c->s=sign;
		}
		return;
	}
	aFx.high=aa.f.high;
	aFx.low=aa.f.low;
	aFx.grk = 0;
	bFx.high=bb.f.high;
	bFx.low=bb.f.low;
	bFx.grk = 0;
	e = aa.e - bb.e + 16383;
	U64_div( aFx, bFx, &cFx );

	return ;
}

void pppp(long_double *a, long_double *b, long_double *c )
{
	printf("\ta  s=%d e=%4x f=%8x,%8x\n",a->s,a->e,a->f.high,a->f.low);
	printf("\tb  s=%d e=%4x f=%8x,%8x\n",b->s,b->e,b->f.high,b->f.low);
	printf("\tc  s=%d e=%4x f=%8x,%8x\n",c->s,c->e,c->f.high,c->f.low);
}

long_double a,b,c;
void test_call(int no1,int no2) 
{
	b_xdiv(&a,&b,&c);
	printf("div\n");
	pppp(&a,&b,&c);
}
int main(){

printf("start\n");

memset(&a,0,sizeof(a));
memset(&b,0,sizeof(a));

a.e=32767;

 b . f . high=0x80000000;
 b . f . low=0; 
 test_call(3,5);;

}
