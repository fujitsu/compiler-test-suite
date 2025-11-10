#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define C13(i) c13[i-1]
#define C14(i) c14[i-1]
#define C15(i) c15[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define I14(i) i14[i-1]
COMPLEX8 c10[10]={
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
		0,0	},
	{
		0,0	},
	{
		0,0	},
	{
		0,0	},
	{
		0,0	}
};
COMPLEX8 c11[10]={
	{
		2,2	},
	{
		2,2	},
	{
		2,2	},
	{
		2,2	},
	{
		2,2	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	}
};
COMPLEX8 c12[10]={
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	}
};
COMPLEX8 c13[10]={
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	},
	{
		1.5,2.5	}
};
COMPLEX8 c14[10]={
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	}
};
COMPLEX8 c15[10]={
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	},
	{
		1,2	}
};
COMPLEX8 C10V={
	1,2},
C11V={
	1,2},
C12V={
	1,1},
C13V={
	1.5,2.5};
unsigned long int l10[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l11[10]={
	1,0,1,1,1,0,0,0,1,0};
unsigned long int l12[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l13[10]={
	1,1,1,1,1,1,1,1,1,1};
long int i10[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i11[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i12[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i13[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i14[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	long int N=10,L=3,I;
	printf(" *****  ***** REGISTER MASK\n");
	printf(" ----- LOOP 1 -----\n");
	for(I=1;I<=N;I++)
	{
		if ((C10V.real  ==  C11V.real)  &&
		    (C10V.imag  ==  C11V.imag))
		{
			I10(I)=I;
		}
		if ( L10(I) ==1)
		{
			if ((C10(I).real == C12V.real)  &&
			    (C10(I).imag == C12V.imag))
			{
				I11(I)=I;
			}
		}
		if ((C11(I).real != C12(I).real)  &&
		    (C11(I).imag != C12(I).imag))
		{
			I12(I)=I;
		}
		if ( L11(L) ==1)
		{
			if ((C13V.real == C13(I).real)  &&
			    (C13V.imag == C13(I).imag))
			{
				I13(I)=I;
			}
		}
		if ( L12(I) ==1)
		{
			if ( L13(L) ==1)
			{
				if ((C14(L).real == C15(L).real)  &&
				    (C14(L).imag == C15(L).imag))
				{
					I14(I)=I;
				}
			}
		}
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I11(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I13(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I14(I));
	}
        printf("\n");
	exit (0);
}
