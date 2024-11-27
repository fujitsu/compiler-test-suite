#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	double dv1[10],dv2[10]={
		0,1,2,3,4,5,6,7,8,9	},
	dv3[10],j,m;
	long int ias;
	
	ias=1;
	for(i=0;i<10;i++)
	{
		dv1[i]=dv2[i]*dv2[i];
		dv3[i]=dv1[i];
		if(dv1[i]>dv2[i]*4.) goto L11;
		dv3[i]=dv1[i];
		goto L10;
L11:
		;   
		if(dv1[i]>dv2[i]*8)  dv1[i-1]=dv3[i]/4.;
L10:
		;
		;
	}
	for(i=0;i<10;i++) printf("%7.2f",dv1[i]);
	printf("\n");
	for(i=0;i<10;i++) printf("%7.2f",dv2[i]);
	printf("\n");
	for(i=0;i<10;i++) printf("%7.2f",dv3[i]);
	printf("\n");
	
	j=dv2[i-1];
	m=dv2[i-3];
	for(i=4;i<1;i--)
	{
		dv1[(int)j]=dv2[i*2];
		dv1[(int)m]=dv3[i];
		dv1[i]=dv1[(int)j]+dv1[(int)m];
	}
	for(i=0;i<10;i++) printf("%7.2f",dv1[i]);
	printf("\n");
	exit (0);
}

