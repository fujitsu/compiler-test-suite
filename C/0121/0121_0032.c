#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define ID10(i,j) id10[i-1][j-1]
#define ID20(i,j) id20[i-1][j-1]
#define ID30(i,j) id30[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
double    da10[41],da20[41],da30[41],db10[41][41],db20[41][41];
long int  id10[41][41],id20[41][41],id30[41][41];
COMPLEX16 cd10[41][41],cd20[41][41],cd30[61][61];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=4;
	long int IT5=5;
	long int IT6=10;
	long int IM1=-1;
	long int IM2=-2;
	long int IM3=-4;
	long int IM4=-10;
	long int IM5=-20;
	long int i,j,I,J,IVAL,IND,IP;
	double   DVAR1,DX,DY,DVAL1,DVAL2;
	for(i=0 ; i<41 ; i++)
	{
		da10[i]=4.0;
	}
	for(i=0 ; i<41 ; i++)
	{
		da20[i]=2.0;
	}
	for(i=0 ; i<41 ; i++)
	{
		da30[i]=3.0;
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			db10[i][j]=1.0;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			db20[i][j]=2.0;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			id10[i][j]=2;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			id20[i][j]=3;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			id30[i][j]=4;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=0 ; i<41 ; i++)
		{
			cd10[i][j].dreal = 1.0;
			cd10[i][j].dimag = 2.0;
		}
	}
	for(j=0 ; j<41 ; j++)
	{
		for(i=1 ; i<41 ; i++)
		{
			cd20[i][j].dreal = 2.0;
			cd20[i][j].dimag = 3.0;
		}
	}
	for(j=0 ; j<61 ; j++)
	{
		for(i=0 ; i<61 ; i++)
		{
			cd30[i][j].dreal = 4.0;
			cd30[i][j].dimag = 8.0;
		}
	}
	for(I=IM4 ; I<=-IM4+2 ; I++)
	{
		DA10(I+IT1*IT3+21) = DA20(I+IT3+IM1+21) + DA30(I+IM4+21);
		DA20(I+21)         = DA10(I+IT1*IT2+21) * DA30(I+IT1-IM2+21);
		DVAR1    = (sqrt(DA20(I+21)+DA10(I+IM2+21)) > 0.0) ?
		    (double)(int)(sqrt(DA20(I+21)+DA10(I+IM2+21))+0.5):
		    (double)(int)(sqrt(DA20(I+21)+DA10(I+IM2+21))-0.5);
		for(J=10 ; J>=-IT6 ; J-=1)
		{
			DB10(J+21,I+IM1+21)
			    = DB20(I+21,J+IT1+IT4+21) * 2.0 + DB10(J+20,I+21);
			CD10(I+21,J+21).dreal = CD20(I-IM2+21,J-IM3+21).dreal
			    + CD30(I+IT6+31,J+IT6+31).dreal;
			CD10(I+21,J+21).dimag = CD20(I-IM2+21,J-IM3+21).dimag
			    + CD30(I+IT6+31,J+IT6+31).dimag;
			DX              = sqrt(CD10(J+IM1+21,I+IM2+21).dreal);
			DY              = sqrt(CD10(J+IM1+21,I+IM2+21).dimag);
			CD20(J+21,I+21).dreal = CD30(I+31,J+IT4+31).dreal
			    + (double)( (DX > 0.0) ? (double)(int)(DX+0.5)
			    : (double)(int)(DX-0.5) );
			CD20(J+21,I+21).dimag = CD30(I+31,J+IT4+31).dimag
			    + (double)( (DY > 0.0) ? (double)(int)(DY+0.5)
			    : (double)(int)(DY-0.5) );
			DB20(J+IT2+21,I+21)   = DB10(I+21,J+21) + DB10(J+IM4+21,I+21);
		}
		if ( I >  8 )
		{
			DVAR1 = cos(DA20(I+IM1+21)) + 2.5;
			DVAR1 = (DVAR1 > 0.0) ?
			    (double)(int)(DVAR1+0.5) : (double)(int)(DVAR1-0.5);
		}
		DA30(I+11) = DA10(I+IT1+21) + DVAR1;
LBL_10:
		;
	}

	printf("  ****  *** NO.1 **** \n");
	printf("(DA10) \n");
	for(i=1 ; i<=41 ; i++)
	{
		printf(" %g ",DA10(i));
		if(i==21)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA20) \n");
	for(i=1 ; i<=41 ; i++)
	{
		printf(" %g ",DA20(i));
		if(i==21)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA30) \n");
	for(i=1 ; i<=41 ; i++)
	{
		printf(" %g ",DA30(i));
		if(i==21)
		{
			printf("\n");
		}
	}
	printf("\n");

	i = 0;
	printf("(CD10) \n");
	for(J=31 ; J>=11 ; J--)
	{
		for(I=11 ; I<=33 ; I++)
		{
			printf("(%g,%g) ",CD10(I,J).dreal,CD10(I,J).dimag);
			i++;
			if(i==10)
			{
				printf("\n");
				i = 0;
			}
		}
	}
	printf("\n");

	i = 0;
	printf("(CD20) \n");
	for(J=11 ; J<=31 ; J++)
	{
		for(I=31 ; I>=11 ; I--)
		{
			printf("(%g,%g) ",CD20(I,J).dreal,CD20(I,J).dimag);
			i++;
			if(i==10)
			{
				printf("\n");
				i = 0;
			}
		}
	}
	printf("\n");

	i = 0;
	printf("(DB10) \n");
	for(J=11 ; J<=31 ; J++)
	{
		for(I=31 ; I>=11 ; I--)
		{
			printf(" %g ",DB10(I,J));
			i++;
			if(i==15)
			{
				printf("\n");
				i = 0;
			}
		}
	}
	printf("\n");

	i = 0;
	printf("(DB20) \n");
	for(J=11 ; J<=31 ; J++)
	{
		for(I=31 ; I>=11 ; I--)
		{
			printf(" %g ",DB20(I,J));
			i++;
			if(i==15)
			{
				printf("\n");
				i = 0;
			}
		}
	}
	printf("\n");

	IVAL=0;
	for(I=IM5 ; I<=IT6 ; I+=IT1)
	{
		for(J=-10 ; J<=9 ; J+=2)
		{
			ID10(I+21,J*IT2+21) = ID10(I+21,J*IT2+22)
			    * ID30(J-IM1+21,I+IT2+21);
			ID20(J+21,J+21)     = ID10(I+21,J*IT2+IT2+21)
			    + ID30(J+IT5+21,I-IM2+21);
			ID30(I+21,J+IT1+21) = ID20(I+21,J+IM1+21) + ID20(J+IT1+21,I+21);
			if ( I <0 )     goto LBL_40;
			IVAL = (IVAL>ID30(I+20,J+21))  ?  IVAL:ID30(I+20,J+21);
			IND  = I;
LBL_40:
			;
		}
LBL_30:
		;
	}

	printf("  ****  *** NO.2 **** \n");
	printf("(ID10)  \n");
	for(j=1 ; j<=41 ; j++)
	{
		for(i=1 ; i<=41 ; i++)
		{
			printf(" %ld ",ID10(i,j));
			if(i==21 || i==41)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("(ID20)  \n");
	for(j=1 ; j<=41 ; j++)
	{
		for(i=1 ; i<=41 ; i++)
		{
			printf(" %ld ",ID20(i,j));
			if(i==21 || i==41)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("(ID30)  \n");
	for(j=1 ; j<=41 ; j++)
	{
		for(i=1 ; i<=41 ; i++)
		{
			printf(" %ld ",ID30(i,j));
			if(i==21 || i==41)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("  IVAL = %ld   IND =  %ld \n",IVAL,IND);

	for(I=1 ; I<=41 ; I++)
	{
		for(J=41 ; J>=1 ; J-=1)
		{
LBL_50:
			;
		}
	}

	for(I=21 ; I<=41 ; I++)
	{
		for(J=1 ; J<=21 ; J++)
		{
			CD10(ID10(I,J),J).dreal = CD20(ID20(I,J),I).dreal
			    + CD30(I+10,J+10).dreal;
			CD10(ID10(I,J),J).dimag = CD20(ID20(I,J),I).dimag
			    + CD30(I+10,J+10).dimag;
			CD20(ID20(I,J),I+IM1).dreal =
			    CD10(ID10(I,J),ID10(I,J)).dreal * CD30(J+10,J+10).dreal
			    - CD10(ID10(I,J),ID10(I,J)).dimag * CD30(J+10,J+10).dimag;
			CD20(ID20(I,J),I+IM1).dimag =
			    CD10(ID10(I,J),ID10(I,J)).dreal * CD30(J+10,J+10).dimag
			    + CD10(ID10(I,J),ID10(I,J)).dimag * CD30(J+10,J+10).dreal;
			IP = ID30(I,J);
			CD30(IP+20,J+10).dreal = CD10(ID10(I,J),IP+20).dreal
			    - CD20(IP,J).dreal;
			CD30(IP+20,J+10).dimag = CD10(ID10(I,J),IP+20).dimag
			    - CD20(IP,J).dimag;
		}
	}

	printf("  ****  *** NO.3 **** \n");
	I = 0;
	printf("(CD10)  \n");
	for(j=1 ; j<=41 ; j++)
	{
		for(i=1 ; i<=41 ; i++)
		{
			printf("(%g,%g) ",CD10(i,j).dreal,CD10(i,j).dimag);
			I++;
			if(I==10)
			{
				printf("\n");
				I = 0;
			}
		}
	}
	printf("\n");

	I = 0;
	printf("(CD20)  \n");
	for(j=1 ; j<=41 ; j++)
	{
		for(i=1 ; i<=41 ; i++)
		{
			printf("(%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
			I++;
			if(I==10)
			{
				printf("\n");
				I = 0;
			}
		}
	}
	printf("\n");

	I = 0;
	printf("(CD30)  \n");
	for(j=1 ; j<=61 ; j++)
	{
		for(i=1 ; i<=61 ; i++)
		{
			printf("(%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
			I++;
			if(I==10)
			{
				printf("\n");
				I = 0;
			}
		}
	}
	printf("\n");

	DVAL1 = 0.0;
	DVAL2 = 0.0;
	for(I=1 ; I<=41 ; I++)
	{
		for(J=1 ; J<=41 ; J++)
		{
			if ( CD10(I,J).dreal  >=  CD10(I,J).dimag )
			{
				DVAL1 = (DVAL1 > CD10(I,J).dreal)  ?  DVAL1 : CD10(I,J).dreal;
			}
			else
			{
				DVAL2 = (DVAL2 > CD10(I,J).dimag)  ?  DVAL2 : CD10(I,J).dimag;
			}
		}
	}

	printf("  ****  *** NO.4 **** \n");
	printf("  DVAL1 =  %g DVAL2 =  %g \n",DVAL1,DVAL2);
	exit (0);
}
