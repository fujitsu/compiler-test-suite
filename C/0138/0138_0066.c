#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct {
	float real;
	float imag;
}complex8;
typedef struct {
	double dreal;
	double dimag;
}complex16;
int main(){
	float  a1[10]  ,b1[10]  ,c1[10];
	float  a11[10] ,b11[10] ,c11[10];
	float  a111[10],b111[10],c111[10];
	float  ax1[10]  ,bx1[10]  ,cx1[10];
	float  ax11[10] ,bx11[10] ,cx11[10];
	float  ax111[10],bx111[10],cx111[10];
	double a2[10]  ,b2[10]  ,c2[10];
	double a22[10] ,b22[10] ,c22[10];
	double a222[10],b222[10],c222[10];
	double ax2[10]  ,bx2[10]  ,cx2[10];
	double ax22[10] ,bx22[10] ,cx22[10];
	double ax222[10],bx222[10],cx222[10];
	complex8      a3[10],b3[10];
	complex16     a4[10],b4[10];
	long int m[10];
	long int s=2,i;
	for(i=0;i<10;i++)
	{
		b1[i]=2.0;
		c1[i]=0.3;
		b11[i]=2.0;
		c11[i]=0.3;
		b111[i]=2.0;
		c111[i]=0.3;
		b22[i]=2.0;
		c22[i]=0.3;
		b2[i]=2.0;
		c2[i]=0.3;
		b222[i]=2.0;
		c222[i]=0.3;
		b3[i].real=(2.0);
		b3[i].imag=(2.5);
		b4[i].dreal=(32);
		b4[i].dimag=(0.8);
	}
	for(i=0;i<10;i++)
	{
		c1[i]=2.0;
		a1[i]=exp(b1[i]);
		m[i]=(i+1);
	}
	for(i=0;i<10;i++)
	{
		c111[i]=2.0;
		a111[i]=pow(2.0,b1[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		c11[i]=2.0;
		a11[i]=pow(10.0,b11[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a2[i]=exp(b2[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a22[i]=pow(2.0,b22[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a222[i]=pow(10.0,b222[i]);
		m[i]=(i+1)+m[i];
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++){
		ax1[i] = a1[i] - (float)(int)(a1[i]) ;
		if (ax1[i] > 0.0001) a1[i]=(float)(int)(a1[i])+1.0 ;
		bx1[i] = b1[i] - (float)(int)(b1[i]) ;
		if (bx1[i] > 0.0001) b1[i]=(float)(int)(b1[i])+1.0 ;
		cx1[i] = c1[i] - (float)(int)(c1[i]) ;
		if (cx1[i] > 0.0001) c1[i]=(float)(int)(c1[i])+1.0 ;
		ax11[i] = a11[i] - (float)(int)(a11[i]) ;
		if (ax11[i] > 0.0001) a11[i]=(float)(int)(a11[i])+1.0 ;
		bx11[i] = b11[i] - (float)(int)(b11[i]) ;
		if (bx11[i] > 0.0001) b11[i]=(float)(int)(b11[i])+1.0 ;
		cx11[i] = c11[i] - (float)(int)(c11[i]) ;
		if (cx11[i] > 0.0001) c11[i]=(float)(int)(c11[i])+1.0 ;
		ax111[i] = a111[i] - (float)(int)(a111[i]) ;
		if (ax111[i] > 0.0001) a111[i]=(float)(int)(a111[i])+1.0 ;
		bx111[i] = b111[i] - (float)(int)(b111[i]) ;
		if (bx111[i] > 0.0001) b111[i]=(float)(int)(b111[i])+1.0 ;
		cx111[i] = a111[i] - (float)(int)(a111[i]) ;
		if (cx111[i] > 0.0001) c111[i]=(float)(int)(c111[i])+1.0 ;
		ax2[i] = a2[i] - (float)(int)(a2[i]) ;
		if (ax2[i] > 0.0001) a2[i]=(float)(int)(a2[i])+1.0 ;
		bx2[i] = b2[i] - (float)(int)(b2[i]) ;
		if (bx2[i] > 0.0001) b2[i]=(float)(int)(b2[i])+1.0 ;
		cx2[i] = c2[i] - (float)(int)(c2[i]) ;
		if (cx2[i] > 0.0001) c2[i]=(float)(int)(c2[i])+1.0 ;
		ax22[i] = a22[i] - (float)(int)(a22[i]) ;
		if (ax22[i] > 0.0001) a22[i]=(float)(int)(a22[i])+1.0 ;
		bx22[i] = b22[i] - (float)(int)(b22[i]) ;
		if (bx22[i] > 0.0001) b22[i]=(float)(int)(b22[i])+1.0 ;
		cx22[i] = c22[i] - (float)(int)(c22[i]) ;
		if (cx22[i] > 0.0001) c22[i]=(float)(int)(c22[i])+1.0 ;
		ax222[i] = a222[i] - (float)(int)(a222[i]) ;
		if (ax222[i] > 0.0001) a222[i]=(float)(int)(a222[i])+1.0 ;
		bx222[i] = b222[i] - (float)(int)(b222[i]) ;
		if (bx222[i] > 0.0001) b222[i]=(float)(int)(b222[i])+1.0 ;
		cx222[i] = c222[i] - (float)(int)(c222[i]) ;
		if (cx222[i] > 0.0001) c222[i]=(float)(int)(c222[i])+1.0 ;
		printf("                      *****   [%ld]   ****\n",i);
		printf(" a1[%ld]= %f a2[%ld]= %f  ",i,a1[i],i,a2[i]);
		printf(" a11[%ld]= %f a22[%ld]= %f \n",i,a11[i],i,a22[i]);
		printf(" a111[%ld]= %f a222[%ld]= %f \n",i,a111[i],i,a222[i]);
		printf(" m[%ld]= %d c2[%ld]= %f \n",i,m[i],i,c2[i]);
		printf(" c11[%ld]= %f c111[%ld]= %f \n",i,c11[i],i,c111[i]);
	}
	exit (0);
}
