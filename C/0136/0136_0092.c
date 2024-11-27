#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int vmix[ ], int kmy[ ], int afg[ ], int dafg[ ], int n);








int main (void)
{
	int vmix[14];
	int kmy[5]={
		0,1,2,3,4	};
	int afg[14];
	int dafg[14],i;
	for(i=0;i<14;i++) { 
		dafg[i]=0 ;
		vmix[i]=i;
		afg[i]=14-i;
	}
	sub(vmix,kmy,afg,dafg,5) ;

	printf("dafg=   ") ;
	for(i=0;i<14;i++)
		printf("%d  ",dafg[i]) ;
	printf("\n") ;
	exit (0);
}

int sub(int vmix[ ], int kmy[ ], int afg[ ], int dafg[ ], int n)
{
	int i,etmp1,etmp2 ;
	for ( i=0 ; i<n ; i++) {
		etmp1 = -vmix [kmy [i] ] ;
		kmy [i] = kmy [i] *2 + n ;
		etmp2 = vmix [kmy [i] ] *2.718;
		dafg [kmy [i] ] = etmp1*etmp1*afg [kmy [i] ] -etmp2 ;
	}
}
