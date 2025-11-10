#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define C13(i) c13[i-1]
#define C14(i) c14[i-1]
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define CD20(i) cd20[i-1]
#define CD21(i) cd21[i-1]
#define CD22(i) cd22[i-1]
#define I20(i) i20[i-1]
#define I21(i) i21[i-1]
#define I22(i) i22[i-1]
COMPLEX8 c10[10]={
	{
		1,2	},
	{
		2,2	},
	{
		1,2	},
	{
		3,3	},
	{
		1,2	},
	{
		2,1	},
	{
		1,2	},
	{
		2,3	},
	{
		1,2	},
	{
		1,2	}
};

COMPLEX8 c11[10]={
	{
		1,3	},
	{
		0,0	},
	{
		2,2	},
	{
		0,3	},
	{
		1,2	},
	{
		0,1	},
	{
		2,2	},
	{
		1,1	},
	{
		1,3	},
	{
		3,1	}
};

COMPLEX8 c12[10]={
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		2,2	},
	{
		2,2	},
	{
		2,2	},
	{
		2,2	},
	{
		2,2	}
};

COMPLEX8 c13[10]={
	{
		0,0	},
	{
		0,0	},
	{
		0,0	},
	{
		0,0	},
	{
		0,0	},
	{
		3,3	},
	{
		3,3	},
	{
		3,3	},
	{
		3,3	},
	{
		3,3	}
};

COMPLEX8 c14[10]={
	{
		1,0	},
	{
		1,0	},
	{
		1,0	},
	{
		1,0	},
	{
		1,0	},
	{
		3,2	},
	{
		3,2	},
	{
		3,2	},
	{
		3,2	},
	{
		3,2	}
};

long int i10[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i11[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i12[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i13[10]={
	0,0,0,0,0,0,0,0,0,0};
COMPLEX16 cd20[10]={
	{
		1,1	},
	{
		1,1	},
	{
		0,0	},
	{
		0,0	},
	{
		2,2	},
	{
		2,2	},
	{
		3,3	},
	{
		3,3	},
	{
		0,1	},
	{
		0,1	}
};
COMPLEX16 cd21[10]={
	{
		1,1	},
	{
		1,1	},
	{
		1,0	},
	{
		1,0	},
	{
		2,2	},
	{
		2,2	},
	{
		3,1	},
	{
		3,1	},
	{
		0,1	},
	{
		0,1	}
};
COMPLEX16 cd22[10]={
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		0,1	},
	{
		0,1	},
	{
		0,1	},
	{
		0,1	},
	{
		0,1	}
};
long int i20[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i21[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i22[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	long int N=10;
	long int L=3,M=5,I;
	COMPLEX8 CV10={
		2,2	},
	CV11={
		1,1	},
	CV12={
		1,1	};
	COMPLEX16 CDV20={
		0,1	},
	CDV21={
		3,2	},
	CDV22={
		4,3	},
	CDV23={
		2,2	},
	CDV24={
		3,1	};
	printf(" *****  ***** IF (COMPLEX)\n");
	printf(" ----- LOOP 1 -----\n");
	for(I=1;I<=N;I++)
	{
		if ((C10(I).real == 1.0)  &&
		    (C10(I).imag == 2.0))
		{
			if ((C11(I).real != 2.0)  &&
			    (C11(I).imag != 2.0))
			{
				I10(I)=I;
			}
			if ((C10(L).real == C11(M).real)  &&
			    (C10(L).imag == C11(M).imag))
			{
				I11(I)=I;
			}
		}
		if ((C12(I).real == C13(I).real)  &&
		    (C12(I).imag == C13(I).imag))
		{
			goto LBL_10 ;
		}
		if ((C14(I).real !=  CV10.real)  &&
		    (C14(I).imag !=  CV10.imag))
		{
			I12(I)=I;
		}
		if ((CV11.real == CV12.real)  &&
		    (CV11.imag == CV12.imag))
		{
			I13(I)=I;
		}
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I10(I));
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I11(I));
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I12(I));
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I13(I));
	}
	printf(" ----- LOOP 2 -----\n");
	for(I=1;I<=N;I++)
	{
		if ((CD20(I).dreal == CD21(I).dreal)  &&
		    (CD20(I).dimag == CD21(I).dimag))
		{
			goto LBL_21;
		}
		if ((CD22(I).dreal !=  CDV20.dreal)  &&
		    (CD22(I).dimag !=  CDV20.dimag))
		{
			goto LBL_21;
		}
		goto LBL_22;
LBL_21:
		;
		I20(I)=I;
LBL_22:
		;
		if ((CD22(I).dreal != CDV20.dreal)  &&
		    (CD22(I).dimag != CDV20.dimag))
		{
			goto LBL_23;
		}
		if ((CDV21.dreal == CD22(I).dreal)  &&
		    (CDV21.dimag == CD22(I).dimag))
		{
			goto LBL_23;
		}
		if ((CD22(I).dreal != CDV22.dreal)  &&
		    (CD22(I).dimag != CDV22.dimag))
		{
			goto LBL_23;
		}
		goto LBL_24;
LBL_23:
		;
		I21(I)=I;
LBL_24:
		;
		if ((CD20(L).dreal == CD21(L).dreal)  &&
		    (CD20(L).dimag == CD21(L).dimag))
		{
			goto LBL_25;
		}
		if ((CD20(L).dreal != CDV23.dreal)  &&
		    (CD20(L).dimag != CDV23.dimag))
		{
			goto LBL_25;
		}
		if ((CDV24.dreal == CD21(L).dreal)  &&
		    (CDV24.dimag == CD21(L).dimag))
		{
			goto LBL_25;
		}
		goto LBL_20;
LBL_25:
		;
		I22(I)=I;
LBL_20:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I20(I));
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I21(I));
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld",I22(I));
	}

	printf("\n");
	exit (0);
}
