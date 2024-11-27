#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(short int *pi2, long long int *pi8, unsigned char *pu1, unsigned short int *pu2, unsigned int *pu4, unsigned long long int *pu8, float *pr4, double *pr8);
int main()
{
	int             i,count=0;
	
	short int              i2;
	long long int          i8;
	unsigned char          u1;
	unsigned short int     u2;
	unsigned int           u4;
	unsigned long long int u8;
	float                  r4;
	double                 r8;
	init(&i2,&i8,&u1,&u2,&u4,&u8,&r4,&r8);

	for(i=0;i<i2;i++)
		count++;
	for(i=i8-100;i<i8;i++)
		count++;
	for(i=0;i<u1;i++)
		count++;
	for(i=0;i<u2;i++)
		count++;
	for(i=u4-100;i<(int)u4;i++)
		count++;
	for(i=u8-100;i<(int)u8;i++)
		count++;
	for(i=0;i<r4;i++)
		count++;
	for(i=0;i<r8;i++)
		count++;
	for(i=0;i!=i2;i++)
		count++;
	for(i=i8-100;i!=i8;i++)
		count++;
	for(i=0;i!=u1;i++)
		count++;
	for(i=0;i!=u2;i++)
		count++;
	for(i=u4-100;i!=(int)u4;i++)
		count++;
	for(i=u8-100;i!=(int)u8;i++)
		count++;
	
	for(i=0;i2>=i;i++)
		count++;
	for(i=i8-100;i8>=i;i++)
		count++;
	for(i=0;u1>=i;i++)
		count++;
	for(i=0;u2>=i;i++)
		count++;
	for(i=u4-100;(int)u4>=i;i++)
		count++;
	for(i=u8-100;(int)u8>=i;i++)
		count++;
	for(i=0;r4>=i;i++)
		count++;
	for(i=0;r8>=i;i++)
		count++;
	for(i=0;i2!=i;i++)
		count++;
	for(i=i8-100;i8!=i;i++)
		count++;
	for(i=0;u1!=i;i++)
		count++;
	for(i=0;u2!=i;i++)
		count++;
	for(i=u4-100;(int)u4!=i;i++)
		count++;
	for(i=u8-100;(int)u8!=i;i++)
		count++;
	
	printf("count=%d \n",count);

	exit (0);
}
int init(pi2,pi8,pu1,pu2,pu4,pu8,pr4,pr8)

short int              *pi2;
long long int          *pi8;
unsigned char          *pu1;
unsigned short int     *pu2;
unsigned int           *pu4;
unsigned long long int *pu8;
float                  *pr4;
double                 *pr8;
{
	*pi2=0x7fff;
	*pi8=0x7ffffff;   
	*pu1=0xff;
	*pu2=0xffff;
	*pu4=0xfffffff;
	*pu8=0xfffffff;  
	*pr4=100.100;
	*pr8=123.456789;
}



