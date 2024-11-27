#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
typedef struct{
	float real,imag;
}COMPLEX;
typedef struct{
	float real,imag;
}COMPLEX8;
typedef struct{
	double dreal,dimag;
}COMPLEX16;
typedef struct{
	long double qreal,qimag;
}COMPLEX32;
#define I1A(i) i1a[i-1]
#define I1B(i) i1b[i-1]
#define I1C(i) i1c[i-1]
#define I1D(i) i1d[i-1]
#define I1E(i) i1e[i-1]
#define I1F(i) i1f[i-1]
#define I2A(i) i2a[i-1]
#define I2B(i) i2b[i-1]
#define I2C(i) i2c[i-1]
#define I2D(i) i2d[i-1]
#define I2E(i) i2e[i-1]
#define I2F(i) i2f[i-1]
#define I3A(i) i3a[i-1]
#define I3B(i) i3b[i-1]
#define I3C(i) i3c[i-1]
#define I3D(i) i3d[i-1]
#define I3E(i) i3e[i-1]
#define I3F(i) i3f[i-1]
#define I4A(i) i4a[i-1]
#define I4B(i) i4b[i-1]
#define I4C(i) i4c[i-1]
#define I4D(i) i4d[i-1]
#define I4E(i) i4e[i-1]
#define I4F(i) i4f[i-1]
#define I5A(i) i5a[i-1]
#define I5B(i) i5b[i-1]
#define I5C(i) i5c[i-1]
#define I5D(i) i5d[i-1]
#define I5E(i) i5e[i-1]
#define I5F(i) i5f[i-1]
#define I6A(i) i6a[i-1]
#define I6B(i) i6b[i-1]
#define I6C(i) i6c[i-1]
#define I6D(i) i6d[i-1]
#define I6E(i) i6e[i-1]
#define I6F(i) i6f[i-1]
#define R1A(i) r1a[i-1]
#define R1B(i) r1b[i-1]
#define R1C(i) r1c[i-1]
#define R1D(i) r1d[i-1]
#define R1E(i) r1e[i-1]
#define R1F(i) r1f[i-1]
#define R2A(i) r2a[i-1]
#define R2B(i) r2b[i-1]
#define R2C(i) r2c[i-1]
#define R2D(i) r2d[i-1]
#define R2E(i) r2e[i-1]
#define R2F(i) r2f[i-1]
#define R3A(i) r3a[i-1]
#define R3B(i) r3b[i-1]
#define R3C(i) r3c[i-1]
#define R3D(i) r3d[i-1]
#define R3E(i) r3e[i-1]
#define R3F(i) r3f[i-1]
#define R4A(i) r4a[i-1]
#define R4B(i) r4b[i-1]
#define R4C(i) r4c[i-1]
#define R4D(i) r4d[i-1]
#define R4E(i) r4e[i-1]
#define R4F(i) r4f[i-1]
#define R5A(i) r5a[i-1]
#define R5B(i) r5b[i-1]
#define R5C(i) r5c[i-1]
#define R5D(i) r5d[i-1]
#define R5E(i) r5e[i-1]
#define R5F(i) r5f[i-1]
#define R6A(i) r6a[i-1]
#define R6B(i) r6b[i-1]
#define R6C(i) r6c[i-1]
#define R6D(i) r6d[i-1]
#define R6E(i) r6e[i-1]
#define R6F(i) r6f[i-1]
struct array {
	long int i1a[10],i1b[10],i1c[10],i1d[10],i1e[10],i1f[10];
	long int i2a[10],i2b[10],i2c[10],i2d[10],i2e[10],i2f[10];
	long int i3a[10],i3b[10],i3c[10],i3d[10],i3e[10],i3f[10];
	long int i4a[10],i4b[10],i4c[10],i4d[10],i4e[10],i4f[10];
	long int i5a[10],i5b[10],i5c[10],i5d[10],i5e[10],i5f[10];
	long int i6a[10],i6b[10],i6c[10],i6d[10],i6e[10],i6f[10];
	float    r1a[10],r1b[10],r1c[10],r1d[10],r1e[10],r1f[10];
	float    r2a[10],r2b[10],r2c[10],r2d[10],r2e[10],r2f[10];
	float    r3a[10],r3b[10],r3c[10],r3d[10],r3e[10],r3f[10];
	float    r4a[10],r4b[10],r4c[10],r4d[10],r4e[10],r4f[10];
	float    r5a[10],r5b[10],r5c[10],r5d[10],r5e[10],r5f[10];
	float    r6a[10],r6b[10],r6c[10],r6d[10],r6e[10],r6f[10];
} strl;

int subb(struct  array  *p);
int suba(struct  array  *p);
int main()
{
	
	long int I,i;
	printf(" ***  ***\n");
	for(i=0;i< 10;i++)
	{
		strl.i1a[i]=1;
		strl.i1b[i]=1;
		strl.i1c[i]=1;
		strl.i1d[i]=1;
		strl.i1e[i]=1;
		strl.i1f[i]=1;
		strl.i2a[i]=2;
		strl.i2b[i]=2;
		strl.i2c[i]=2;
		strl.i2d[i]=2;
		strl.i2e[i]=2;
		strl.i2f[i]=2;
		strl.i3a[i]=3;
		strl.i3b[i]=3;
		strl.i3c[i]=3;
		strl.i3d[i]=3;
		strl.i3e[i]=3;
		strl.i3f[i]=3;
		strl.i4a[i]=4;
		strl.i4b[i]=4;
		strl.i4c[i]=4;
		strl.i4d[i]=4;
		strl.i4e[i]=4;
		strl.i4f[i]=4;
		strl.i5a[i]=5;
		strl.i5b[i]=5;
		strl.i5c[i]=5;
		strl.i5d[i]=5;
		strl.i5e[i]=5;
		strl.i5f[i]=5;
		strl.i6a[i]=6;
		strl.i6b[i]=6;
		strl.i6c[i]=6;
		strl.i6d[i]=6;
		strl.i6e[i]=6;
		strl.i6f[i]=6;
		strl.r1a[i]=1.0;
		strl.r1b[i]=1.0;
		strl.r1c[i]=1.0;
		strl.r1d[i]=1.0;
		strl.r1e[i]=1.0;
		strl.r1f[i]=1.0;
		strl.r2a[i]=2.0;
		strl.r2b[i]=2.0;
		strl.r2c[i]=2.0;
		strl.r2d[i]=2.0;
		strl.r2e[i]=2.0;
		strl.r2f[i]=2.0;
		strl.r3a[i]=3.0;
		strl.r3b[i]=3.0;
		strl.r3c[i]=3.0;
		strl.r3d[i]=3.0;
		strl.r3e[i]=3.0;
		strl.r3f[i]=3.0;
		strl.r4a[i]=4.0;
		strl.r4b[i]=4.0;
		strl.r4c[i]=4.0;
		strl.r4d[i]=4.0;
		strl.r4e[i]=4.0;
		strl.r4f[i]=4.0;
		strl.r5a[i]=5.0;
		strl.r5b[i]=5.0;
		strl.r5c[i]=5.0;
		strl.r5d[i]=5.0;
		strl.r5e[i]=5.0;
		strl.r5f[i]=5.0;
		strl.r6a[i]=6.0;
		strl.r6b[i]=6.0;
		strl.r6c[i]=6.0;
		strl.r6d[i]=6.0;
		strl.r6e[i]=6.0;
		strl.r6f[i]=6.0;
	}
	
	suba(&strl);
	subb(&strl);
	for(i=0;i< 10;i++)
	{
		printf(" %ld \n",i+1);
		printf(" %ld %ld %ld %ld \n",strl.i1a[i],strl.i1b[i],
		    strl.i1c[i],strl.i1d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r1a[i],strl.r1b[i],
		    strl.r1c[i],strl.r1d[i]);
		printf(" %ld %ld %ld %ld \n",strl.i2a[i],strl.i2b[i],
		    strl.i2c[i],strl.i2d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r2a[i],strl.r2b[i],
		    strl.r2c[i],strl.r2d[i]);
		printf(" %ld %ld %ld %ld \n",strl.i3a[i],strl.i3b[i],
		    strl.i3c[i],strl.i3d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r3a[i],strl.r3b[i],
		    strl.r3c[i],strl.r3d[i]);
		printf(" %ld %ld %ld %ld \n",strl.i4a[i],strl.i4b[i],
		    strl.i4c[i],strl.i4d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r4a[i],strl.r4b[i],
		    strl.r4c[i],strl.r4d[i]);
		printf(" %ld %ld %ld %ld \n",strl.i5a[i],strl.i5b[i],
		    strl.i5c[i],strl.i5d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r5a[i],strl.r5b[i],
		    strl.r5c[i],strl.r5d[i]);
		printf(" %ld %ld %ld %ld \n",strl.i6a[i],strl.i6b[i],
		    strl.i6c[i],strl.i6d[i]);
		printf(" %8.2f %8.2f %8.2f %8.2f \n",strl.r6a[i],strl.r6b[i],
		    strl.r6c[i],strl.r6d[i]);
		printf(" ************************************ \n");
	}
	printf(" *** END  *** \n");
exit (0);
}
int suba(p)
struct  array  *p;
{
	long int       i;
	for (i=0;i<10;i++)
	{
		p->i1a[i]= p->r6a[i];
		p->i1b[i]= p->r6b[i];
		p->i1c[i]= p->r6c[i];
		p->i1d[i]= p->r6d[i];
		p->i1e[i]= p->r6e[i];
		p->i1f[i]= p->r6f[i];
		p->i2a[i]= p->r5a[i];
		p->i2b[i]= p->r5b[i];
		p->i2c[i]= p->r5c[i];
		p->i2d[i]= p->r5d[i];
		p->i2e[i]= p->r5e[i];
		p->i2f[i]= p->r5f[i];
		p->i3a[i]= p->r4a[i];
		p->i3b[i]= p->r4b[i];
		p->i3c[i]= p->r4c[i];
		p->i3d[i]= p->r4d[i];
		p->i3e[i]= p->r4e[i];
		p->i3f[i]= p->r4f[i];
		p->i4a[i]= p->r3a[i];
		p->i4b[i]= p->r3b[i];
		p->i4c[i]= p->r3c[i];
		p->i4d[i]= p->r3d[i];
		p->i4e[i]= p->r3e[i];
		p->i4f[i]= p->r3f[i];
		p->i5a[i]= p->r2a[i];
		p->i5b[i]= p->r2b[i];
		p->i5c[i]= p->r2c[i];
		p->i5d[i]= p->r2d[i];
		p->i5e[i]= p->r2e[i];
		p->i5f[i]= p->r2f[i];
		p->i6a[i]= p->r1a[i];
		p->i6b[i]= p->r1b[i];
		p->i6c[i]= p->r1c[i];
		p->i6d[i]= p->r1d[i];
		p->i6e[i]= p->r1e[i];
		p->i6f[i]= p->r1f[i];
		
	}
	for (i=0;i<10;i++)
	{
		p->r6a[i]= p->i1a[i];
		p->r6b[i]= p->i1b[i];
		p->r6c[i]= p->i1c[i];
		p->r6d[i]= p->i1d[i];
		p->r6e[i]= p->i1e[i];
		p->r6f[i]= p->i1f[i];
		p->r5a[i]= p->i2a[i];
		p->r5b[i]= p->i2b[i];
		p->r5c[i]= p->i2c[i];
		p->r5d[i]= p->i2d[i];
		p->r5e[i]= p->i2e[i];
		p->r5f[i]= p->i2f[i];
		p->r4a[i]= p->i3a[i];
		p->r4b[i]= p->i3b[i];
		p->r4c[i]= p->i3c[i];
		p->r4d[i]= p->i3d[i];
		p->r4e[i]= p->i3e[i];
		p->r4f[i]= p->i3f[i];
		p->r3a[i]= p->i4a[i];
		p->r3b[i]= p->i4b[i];
		p->r3c[i]= p->i4c[i];
		p->r3d[i]= p->i4d[i];
		p->r3e[i]= p->i4e[i];
		p->r3f[i]= p->i4f[i];
		p->r4a[i]= p->i5a[i];
		p->r4b[i]= p->i5b[i];
		p->r4c[i]= p->i5c[i];
		p->r4d[i]= p->i5d[i];
		p->r4e[i]= p->i5e[i];
		p->r4f[i]= p->i5f[i];
		p->r1a[i]= p->i6a[i];
		p->r1b[i]= p->i6b[i];
		p->r1c[i]= p->i6c[i];
		p->r1d[i]= p->i6d[i];
		p->r1e[i]= p->i6e[i];
		p->r1f[i]= p->i6f[i];
		
	}
	return 0;
}
int subb(p)
struct  array  *p;
{
	long int       i;
	for (i=0;i<10;i++)
	{
		if (p->i1a[i] = 6)
		{
			p->i1a[i]=p->r6a[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i1b[i]=p->r6b[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i1c[i]=p->r6c[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i1d[i]=p->r6d[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i1e[i]=p->r6e[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i1f[i]=p->r6f[i]+p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
		}
		if (p->i2a[i]=5)
		{
			p->i2a[i]=p->r5a[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i2b[i]=p->r5b[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i2c[i]=p->r5c[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i2d[i]=p->r5d[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i2e[i]=p->r5e[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i2f[i]=p->r5f[i]*p->r5a[i]+p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
		}
		if (p->i3a[i]=4)
		{
			p->i3a[i]=p->r4a[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i3b[i]=p->r4b[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i3c[i]=p->r4c[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i3d[i]=p->r4d[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i3e[i]=p->r4e[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i3f[i]=p->r4f[i]*p->r4a[i]*p->r4a[i]+p->r3a[i]+p->r2a[i]+p->r1a[i];
		}
		if (p->i4a[i]=3)
		{
			p->i4a[i]=p->r3a[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i4b[i]=p->r3b[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i4c[i]=p->r3c[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i4d[i]=p->r3d[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i4e[i]=p->r3e[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
			p->i4f[i]=p->r3f[i]*p->r3a[i]*p->r3a[i]*p->r3a[i]+p->r2a[i]+p->r1a[i];
		}
		if (p->i5a[i]=2)
		{
			p->i5a[i]=p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
			p->i5b[i]=p->r2b[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
			p->i5c[i]=p->r2c[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
			p->i5d[i]=p->r2d[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
			p->i5e[i]=p->r2e[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
			p->i5f[i]=p->r2f[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]*p->r2a[i]+p->r1a[i];
		}
		if (p->i6a[i]=1)
		{
			p->i6a[i]=p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
			p->i6b[i]=p->r1b[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
			p->i6c[i]=p->r1c[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
			p->i6d[i]=p->r1d[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
			p->i6e[i]=p->r1e[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
			p->i6f[i]=p->r1f[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i]*p->r1a[i];
		}
		
	}
	for (i=0;i<10;i++)
	{
		if (p->r6a[i]=6)
		{
			p->r6a[i]=p->i6a[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r6b[i]=p->i6b[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r6c[i]=p->i6c[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r6d[i]=p->i6d[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r6e[i]=p->i6e[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r6f[i]=p->i6f[i]+p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
		}
		if (p->r5a[i]=5)
		{
			p->r5a[i]=p->i5a[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r5b[i]=p->i5b[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r5c[i]=p->i5c[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r5d[i]=p->i5d[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r5e[i]=p->i5e[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r5f[i]=p->i5f[i]*p->i5a[i]+p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
		}
		if (p->r4a[i]=4)
		{
			p->r4a[i]=p->i4a[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r4b[i]=p->i4b[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r4c[i]=p->i4c[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r4d[i]=p->i4d[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r4e[i]=p->i4e[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r4f[i]=p->i4f[i]*p->i4a[i]*p->i4a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
		}
		if (p->r3a[i]=3)
		{
			p->r3a[i]=p->i3a[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r3b[i]=p->i3b[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r3c[i]=p->i3c[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r3d[i]=p->i3d[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r3e[i]=p->i3e[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
			p->r3f[i]=p->i3f[i]*p->i3a[i]+p->i3a[i]+p->i3a[i]+p->i2a[i]+p->i1a[i];
		}
		if (p->r2a[i]=2)
		{
			p->r2a[i]=p->i2a[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
			p->r2b[i]=p->i2b[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
			p->r2c[i]=p->i2c[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
			p->r2d[i]=p->i2d[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
			p->r2e[i]=p->i2e[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
			p->r2f[i]=p->i2f[i]*p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i2a[i]+p->i1a[i];
		}
		if (p->r1a[i]=1)
		{
			p->r1a[i]=p->i1a[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
			p->r1b[i]=p->i1b[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
			p->r1c[i]=p->i1c[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
			p->r1d[i]=p->i1d[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
			p->r1e[i]=p->i1e[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
			p->r1f[i]=p->i1f[i]*p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i]+p->i1a[i];
		}
		
	}
	return 0;
}
