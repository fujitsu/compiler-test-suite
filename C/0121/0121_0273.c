#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4S3(i) r4s3[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define L4S3(i) l4s3[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
float r4s3[10],r4a1[10],r4a2[10];
unsigned long int l4s3[10],l4a1[10],l4a2[10];
int main()
{
	unsigned long int l4s1,l4s2;
	float r4s1;
	long int  i, j;

	for(i=0;i< 10;i++){
		r4a1[i] = i + 1;
		r4a2[i] = r4s3[i] = l4s3[i] = 1;
		if(i%2){
			l4a1[i]=0;
			l4a2[i]=1;
		} else{
			l4a1[i]=1;
			l4a2[i]=0;
		}
	}
	r4s1 = l4s1 = l4s2 = 1;

	printf("####  ## BUSY ON EXIT ####\n");

	for(i=1;i<=10;i++){
		if(L4A1(i)){
			r4s1 = R4A1(i) + 1;
			l4s1 = L4A1(i) && L4A2(i);
		} else{
			r4s1 = R4A1(i) + R4A2(i);
			l4s1 = !(L4A1(i));
		}
	}

	for(i=1;i<=10;i++){
		if(r4s1 >  0)
			R4S3(1) = R4A1(i) + 1;
			else
			R4S3(2) = R4A2(i) + 2;
	}

	printf(" ** TEST NO. 2 **\n");
	printf(" R4S1= %g L4S1= %ld R4S3(1)= %g L4S3(1)= %ld \n",r4s1,l4s1,r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++){
		if(L4A1(i)){
			r4s1 = R4A1(i) + R4A2(i);
			l4s1 = !(L4A1(i));
			l4s2 = L4A2(i);
			R4S3(1) = R4A1(i) + 2;
			L4S3(1) = L4A1(i) && L4A2(i);
		} else{
			r4s1 = R4A2(i) + 1;
			l4s1 = L4A1(i);
			l4s2 = L4A2(i);
			R4S3(1) = R4A1(i) + 1;
			L4S3(1) = L4A1(i) || L4A2(i);
		}
	}

	printf(" ** TEST NO. 2-1 **\n");
	printf(" R4S1= %g L4S1= %ld\n",r4s1,l4s1);
	for(i=0;i<10;i++)
		printf(" R4A1(%ld)=%g L4A1(%ld)= %ld\n",i+1,r4a1[i],i+1,l4a1[i]);
	for(i=1;i<=10;i++){
		if(r4s1 == i){
			r4s1 = R4A1(i) * R4A2(i);
			l4s1 = L4A1(i) && L4A2(i);
			R4S3(1) = r4s1 + R4A1(i);
			L4S3(1) = L4A1(i) || L4A2(i);
		} else{
			r4s1++;
			l4s1 = !(L4A2(i));
			R4S3(2) = R4A1(i) - R4A2(i) + 1;
			L4S3(2) = !(L4A1(i) || L4A2(i));
		}
		r4s1 = r4s1 + R4A1(i);
		R4A2(i) = r4s1;
		R4S3(3) = R4S3(2) + R4S3(1);
		L4S3(3) = L4S3(1) && L4S3(2);
	}

	printf(" ** TEST NO. 2 - 2 **\n");
	printf(" R4S1= %g L4S1= %ld R4S3(1)= %g L4S3(1)= %ld \n",r4s1,l4s1,r4s3[0],l4s3[0]);
	for(i=0;i<10;i++)
		printf(" R4A2(%ld)= %g\n",i+1,r4a2[i]);

	for(i=1;i<=10;i++){
		l4s1 = L4A1(i) && L4A2(i);
		if(l4s1){
			l4s1 = !(L4A1(i));
			L4S3(1) = l4s1 && L4A2(i);
		} else{
			l4s1 = L4A1(i) && L4A2(i);
			L4S3(2) = l4s1;
		}
		r4s1 = R4A1(i) + R4A2(i);
		if(r4s1 > 0){
			r4s1 = R4A1(i) + 1;
			R4S3(1) = R4A2(i) + R4A1(i);
		} else{
			r4s1 = R4A1(i) + 2;
			R4S3(2) = R4A2(i) + r4s1;
		}
	}

	printf(" ** TEST NO. 2 - 3 **\n");
	printf(" L4S1= %ld L4S3(1)= %ld R4S1= %g R4S3(1)= %g\n",l4s1,l4s3[0],r4s1,r4s3[0]);
	for(i=1;i<=10;i++){
		if(L4A1(i)){
			r4s1 = R4A1(i) + R4A2(i);
			l4s1 = !(L4A1(i));
			if(l4s1){
				R4A1(i) = r4s1;
				L4A1(i) = l4s1;
			}
		} else{
			r4s1 = R4A1(i) + 2;
			l4s1 = L4A1(i) && L4A2(i);
			if(r4s1 > 0){
				R4A1(i) = r4s1;
				L4A1(i) = l4s1;
			}
		}
	}

	for(i=1;i<=10;i++){
		if(L4A1(i)){
			R4S3(1) = R4A1(i) + 4;
			L4S3(1) = !(L4A1(i));
			if(L4S3(1)){
				R4A2(i) = R4S3(1);
				L4A2(i) = L4S3(1);
			}
		} else{
			R4S3(1) = R4A1(i) + 2;
			L4S3(1) = L4A1(i) && L4A2(i);
			if(R4S3(1) > 0){
				R4A1(i) = R4S3(2);
				L4A1(i) = L4S3(2);
			}
		}
	}

	printf(" ** TETS NO. 2 - 4 **\n");
	printf(" R4S1= %g L4S1= %ld\n",r4s1,l4s1);
	for(i=0;i<10;i++)
		printf(" R4A1(%ld)= %g L4A1(%ld)= %ld R4A2(%ld)= %g L4A2(%ld)= %ld\n",i+1,r4a1[i],i+1,l4a1[i],i+1,r4a2[i],
		    i+1,l4a2[i]);
	printf(" R4S3(1)= %g L4S3(1)= %ld R4S3(2)= %g L4S3(2)= %ld\n",r4s3[0],l4s3[0],r4s3[1],l4s3[1]);
	for(i=1;i<=10;i++){
		if(L4A1(i)){
			r4s1 = R4A1(i) + R4A2(i);
			l4s1 = !(L4A1(i));
			if(r4s1 >  0) goto LBL_60;
			if(l4s1) goto LBL_60;
		} else{
			r4s1 = R4A2(i) - R4A1(i);
			l4s1 = L4A1(i) && L4A2(i);
			if(r4s1 > 0) goto LBL_60;
			if(l4s1) goto LBL_60;
		}
LBL_60:
		;
	}

	for(i=1;i<=10;i++){
		if (L4A1(i)){
			R4S3(1) = R4A1(i) + R4A2(i);
			L4S3(1) = !(L4A1(i));
			if(R4S3(1) > 0) goto LBL_61;
			if (L4S3(1)) goto LBL_61;
		} else{
			R4S3(1) = R4A2(i) - R4A1(i);
			L4S3(1) = L4A1(i) && L4A2(i);
			if(R4S3(1) > 0) goto LBL_61;
			if(L4S3(1)) goto LBL_61;
		}
LBL_61:
		;
	}

	printf(" ** TETS NO. 1 - 5 **\n");
	printf(" R4S1= %g L4S1= %ld R4S3(1)= %g L4S3(1)= %ld \n",r4s1,l4s1,r4s3[0],l4s3[0]);
	r4s1 = 10;
	for(i=1;i<=r4s1;i++){
		if(r4s1 > 0)
			r4s1 = R4A1(i) + 1;
			else
			r4s1 = R4A1(i) + 2;
		r4s1 = R4A1(i) + i;
		if(r4s1 > 10) goto LBL_71;
	}
LBL_71:
	;

	printf(" ** TEST NO. 2 - 6 **\n");
	printf(" R4S1= %g\n",r4s1);
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			if (L4A1(i)){
				r4s1 = R4A1(i) + R4A2(i);
				l4s1 = L4A1(i) && L4A2(i);
			} else{
				r4s1 = R4A1(i) - R4A2(i);
				l4s1 = L4A1(i) && L4A2(i);
			}
			R4A1(i) = r4s1;
		}

		for(i=1;i<=10;i++){
			if (L4A1(i)){
				R4S3(i) = R4A1(i) + r4s1;
				L4S3(i) = L4A1(i) && L4A2(i);
			} else{
				R4S3(i) = R4A1(i) - R4A2(i);
				L4S3(i) = !(L4A2(i));
			}
			R4A1(i) = r4s1;
		}

		for(i=1;i<=10;i++){
			if (L4A2(i)){
				l4s1 = L4A1(i) && L4A2(i);
				l4s2 = !(L4A2(i));
			} else{
				l4s1 = L4A1(i);
				l4s2 = !(L4A2(i));
			}
			L4A1(i) = l4s1;
		}
	}

	printf(" ** TEST NO. 2 - 7 **\n");
	printf(" R4S1= %g L4S1= %ld L4S2= %ld\n",r4s1,l4s1,l4s2);
	for(i=0;i<10;i++)
		printf(" R4A1(%ld)= %g L4A1(%ld)= %ld\n",i+1,r4a1[i],i+1,l4a1[i]);
	printf(" R4S3(1)= %g L4S3(1)= %ld\n",r4s3[0],l4s3[0]);
	for(i=1;i<=10;i++){
		if(L4A1(i)){
			r4s1 = R4A1(i) + 1;
			l4s1 = !(L4A2(i));
			if(r4s1 > 0) goto LBL_90;
		} else{
			r4s1 = R4A2(i) + 1;
			l4s1 = L4A1(i) && L4A2(i);
			if(l4s1) goto LBL_90;
		}
		R4A1(i) = r4s1;
		L4A1(i) = l4s1 && L4A2(i);
LBL_90:
		;
	}

	printf(" ** TEST NO. 2 - 8 **\n");
	printf(" R4S1= %g L4S1= %ld\n",r4s1,l4s1);
	for(i=0;i<10;i++)
		printf(" R4A1(%ld)= %g L4A1(%ld)= %ld\n",i+1,r4a1[i],i+1,l4a1[i]);
	exit (0);
}
