#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef  struct tag{
	double   s[20];
	float    t[20];
	long int u[20];
} sttyp;
int sub1(double a[], long int b[], unsigned int c[], float d[], sttyp *p);
int main (void)
{
	double a[20],b[20],c[20];
	long int l[20],m[20],n[20];
	unsigned int o[20],p[20],q[20];
	float  x[20],y[20],z[20];
	sttyp  st;
	long int i;
	for(i=0;i<20;i++){
		a[i]=b[i]=c[i]=1.0;
		l[i]=m[i]=n[i]=i;
		o[i]=p[i]=q[i]=i%3;
		x[i]=y[i]=z[i]=(float)(i)/2.0;
		st.s[i]=(double)(22-i);
		st.t[i]=2.0;
		st.u[i]=i%5;
	}
	sub1(a,l,o,x,st.s);
	for(i=0;i<20;i++){
		printf(" a=%g b=%g c=%g ",a[i],b[i],c[i]);
		printf(" l=%d m=%d n=%d ",l[i],m[i],n[i]);
		printf(" o=%u p=%u q=%u ",o[i],p[i],q[i]);
		printf(" x=%f y=%f z=%f ",x[i],y[i],z[i]);
		printf(" s=%g t=%f u=%d \n",st.s[i],st.t[i],st.u[i]);
	}
	exit (0);
}
int sub1(a,b,c,d,p)
double a[];
long int b[];
unsigned int c[];
float d[];
sttyp *p;
{
	long int i;
	for(i=0;i<19;i++){
		if (b[i] > 1){
			a[i]=b[i]+c[i]*d[i];
			p->s[i]=p->t[i]+p->u[i];
		}
		d[i]=d[i+1]+p->t[i];
		c[i]=(a[i] > d[i]);
	}
}
