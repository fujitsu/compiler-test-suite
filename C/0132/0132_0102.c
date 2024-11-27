#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef  struct str1{
	double   a[20];
	double   b[20];
	double   c[20];
} sttyp1;
typedef  struct str2{
	double   d;
	double   e;
	double   f;
} sttyp2;
struct str3{
	double   o[20];
	double   p[20];
	double   q[20];
}elmary;
struct str4{
	double   x;
	double   y;
	double   z;
}stary[20];
int sub (struct str1 *p1, struct str2 *p2);
int main (void)
{
	struct  str1  stt1;
	struct  str2  stt2[20];
	struct  str3  stt3;
	struct  str4  stt4[20];
	long int i;
	for(i=0;i<20;i++){
		stt1.a[i]=1.;
		stt1.b[i]=2.;
		stt1.c[i]=(double)(i);
		stt2[i].d=3.;
		stt2[i].e=4.;
		stt2[i].f=(double)(i%5);
		stt3.o[i]=5.;
		stt3.p[i]=6.;
		stt3.q[i]=(double)(11-i);
		stt4[i].x=7.;
		stt4[i].y=8.;
		stt4[i].z=(double)(21-i);
	}
	sub(&stt1,stt2);
	for(i=0;i<20;i++){
		printf(" a= %g b= %g c= %g ",stt1.a[i],stt1.b[i],stt1.c[i]);
		printf(" d= %g e= %g f= %g ",stt2[i].d,stt2[i].e,stt2[i].f);
		printf(" o= %g p= %g q= %g ",stt3.o[i],stt3.p[i],stt3.q[i]);
		printf(" x= %g y= %g z= %g\n",stt4[i].x,stt4[i].y,stt4[i].z);
	}
	exit (0);
}
int sub (struct str1 *p1, struct str2 *p2)
{
	long int i,nn,l[20];
	for(i=0;i<20;i++){
		l[i]=19-i;
	}

	for(i=0;i<20;i++){
		nn=l[i];
		(*p1).a[nn]=(*p1).a[nn]+(*p1).b[nn]+(*p1).c[nn];
	}

	for(i=0;i<20;i++){
		nn=l[i];
		p1->a[nn]=p1->a[nn]+p1->b[nn]+p1->c[nn];
	}

	for(i=0;i<20;i++){
		nn=l[i];
		(*(p2+nn)).d=(*(p2+nn)).d+(*(p2+i)).e+(*(p2+i)).f;
	}

	for(i=0;i<20;i++){
		nn=l[i];
		(p2+nn)->d=(p2+nn)->d+(p2+i)->e+(p2+i)->f;
	}
}
