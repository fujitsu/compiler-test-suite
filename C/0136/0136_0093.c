#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int vmix[92] ;
	int kmy[5]={
		0,1,0,1,0	};
	int afg[92] ;
	int dafg[92],i,j,k,etmp1,etmp2 ;
	int n=5 ;
	for(i=0;i<92;i++) vmix[i]=i ;
	for(i=0;i<92;i++) afg[i]=92-i ;
	for(i=0;i<92;i++) dafg[i]=0 ;
	for ( k=0 ; k<2 ; k++) {
		for ( j=0 ; j<2 ; j++) {
			for ( i=0 ; i<n ; i++) {
				etmp1 = -vmix [kmy [i] ] ;
				kmy [i] = kmy [i] *2 + n ;
				etmp2 = vmix [kmy [i] ] *2.718;
				dafg [kmy [i] ] = etmp1*etmp1*afg [kmy [i] ] -etmp2 ;
			}
		}
	}
	
	printf("%d\n",kmy[3]);
	exit (0);
}
