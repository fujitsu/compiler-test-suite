#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	signed int i,j,k,a[5];
	static unsigned char      c1[5]={
				1,2,3,4,5		},
	ci11=1,ci15=5;
	static unsigned short int c2[5]={
				1,2,3,4,5		},
	ci21=1,ci25=5;
	static unsigned int       c3[5]={
				1,2,3,4,5		},
	ci31=1,ci35=5;
	static   signed int       c4[5]={
				1,2,3,4,5		},
	ci41=1,ci45=5;
	static   signed short int c5[5]={
				1,2,3,4,5		},
	ci51=1,ci55=5;
	static   signed char      c6[5]={
				1,2,3,4,5		},
	ci61=1,ci65=5;
	
	for(i=0;i<5;i++){
		a[i]=1;
	}
	printf("init = %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]<=ci15)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c2[i]<=ci25)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c3[i]<=ci35)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c4[i]<=ci45)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c5[i]<=ci55)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c6[i]<=ci65)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]<ci15)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c2[i]<ci25)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c3[i]<ci35)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c4[i]<ci45)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c5[i]<ci55)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c6[i]<ci65)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]>=ci11)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c2[i]>=ci21)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c3[i]>=ci31)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c4[i]>=ci41)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c5[i]>=ci51)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c6[i]>=ci61)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]>ci11)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c2[i]>ci21)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c3[i]>ci31)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c4[i]>ci41)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c5[i]>ci51)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	for(i=0;i<5;i++){
		if(c6[i]>ci61)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]==ci11)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c2[i]==ci21)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c3[i]==ci31)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c4[i]==ci41)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c5[i]==ci51)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c6[i]==ci61)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	for(i=0;i<5;i++){
		if(c1[i]!=ci11)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c2[i]!=ci21)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c3[i]!=ci31)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c4[i]!=ci41)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c5[i]!=ci51)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	for(i=0;i<5;i++){
		if(c6[i]!=ci61)  a[i]=i;
	}
	printf("       %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	exit (0);
}
