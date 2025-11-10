#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int OPSEL();
int COEX();
int LISTV();
int main()
{
	printf("  *****  ***** \n");
	LISTV();
	COEX();
	OPSEL();
        printf("\n");
	exit (0);
}
#define I10(i) i10[i-1]
#define I30(i,j,k) i30[i-1][j-1][k-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
#define L30(i,j,k) l30[i-1][j-1][k-1]
#define L20(i,j) l20[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define D20(i,j) d20[i-1][j-1]
#define D30(i,j,k) d30[i-1][j-1][k-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define CD10(i) cd10[i-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD21(i,j) cd21[i-1][j-1]
int LISTV()
{
	long int i10[2]={ 
		1, 2 	};
	long int I10S,I11S=0,I12S=0;
	long int i30[2][2][10];
	long int list[10]={ 
		1, 2, 1, 2, 1, 2, 1, 2, 1, 2 	};
	unsigned long int l10[10]={ 
		1, 0, 1, 0, 1, 0, 1, 0, 1, 0 	};
	unsigned long int L10S,L11S;
	unsigned long int l30[10][2][2],l31[10][2][2];
	unsigned long int l20[2][10]={ 
		{ 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 },
		                                  { 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 }	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	double   D10S,D11S=5.,D12S;
	double   d20[10][2]={ 
		{ 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 }	};
	double   d30[10][2][2],d31[10][2][2];
	COMPLEX16 cd10[10]={ 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			8, 8		},
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			1, 0		}, 
		{ 
			0, 1		} 
	};
	COMPLEX16 CD10S;
	COMPLEX16 cd20[2][10]={ 
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		},
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		} 
	};
	COMPLEX16 cd21[2][2]={ 
		{ 
			{ 
				1, 1			}, 
			{ 
				2, 2			} 
		},
		{ 
			{ 
				3, 3			}, 
			{ 
				4, 4			} 
		} 
	};
	COMPLEX16 cd30[10][2][2];
	long int N2=2,N10=10;
	long int I,J,K,CTR,NCWNR=8,CWNR=8;
	CTR=0;
	for(K=0;K<10;K++){
		for(J=0;J< 2;J++){
			for(I=0;I< 2;I++){
				if (CTR/10 ==0)
				{
					i30[I][J][K]=1;
				}
				else if (CTR/10 ==1)
				{
					i30[I][J][K]=2;
				}
				else if (CTR/10 ==2)
				{
					i30[I][J][K]=3;
				}
				else
				{
					i30[I][J][K]=4;
				}
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				l30[I][J][K]=0;
				l31[I][J][K]=0;
				d31[I][J][K]=0;
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				if (CTR/10 ==0)
				{
					d30[I][J][K]=1;
					cd30[I][J][K].dreal=1;
					cd30[I][J][K].dimag=1;
				}
				else if (CTR/10 ==1)
				{
					d30[I][J][K]=2;
					cd30[I][J][K].dreal=2;
					cd30[I][J][K].dimag=2;
				}
				else if (CTR/10 ==2)
				{
					d30[I][J][K]=3;
					cd30[I][J][K].dreal=3;
					cd30[I][J][K].dimag=3;
				}
				else
				{
					d30[I][J][K]=4;
					cd30[I][J][K].dreal=4;
					cd30[I][J][K].dimag=4;
				}
			}
		}
	}
	printf("  ***** LIST VECTOR METHOD *****\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N2;J++)
		{
			for(K =1;K <=N10;K ++)
			{
				I10S=I10(I)*I30(I,J,K);
				L10S=L10(K) || L30(K,J,I);
				if (L10S==1)
				{
					D10S=D10(K)+D20(K,J)-D30(K,J,I);
					D12S=D10S;
					CD10S.dreal=  (  CD10(K).dreal*CD30(K,J,I).dreal
					    + CD10(K).dimag*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					CD10S.dimag=  (  CD10(K).dimag*CD30(K,J,I).dreal
					    - CD10(K).dreal*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					I11S=I11S+I10S+I;
					D11S=(D10(K) > D11S)?  D10(K):D11S;
					L20(J,K)=L10S;
					R10(LIST(K))=D10S+(float)(I);
					CD20(J,LIST(K)).dreal=CD10S.dreal;
					CD20(J,LIST(K)).dimag=CD10S.dimag;
				}
				else
				{
					D10S=D10(LIST(K));
					I12S=I12S-I10S;
					CD10S.dreal=CD21(J,I).dreal+CD30(LIST(K),J,I).dreal;
					CD10S.dimag=CD21(J,I).dimag+CD30(LIST(K),J,I).dimag;
					D12S=(double)(I10S)+D30(K,LIST(K),I);
					L11S=L10S || L20(J,K);
					L31(LIST(K),J,I)=L11S;
				}
				D10S=D10S+D10(J);
				D31(K,J,I)=D10S+CD10S.dreal+D12S;
LBL_30:
				;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}
	printf(" I11S = %ld\n",I11S);
	printf(" D11S = %g\n",D11S);
	CTR=0;
	printf(" L20  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" %lu",L20(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10  =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD20 =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" (%g,%g)",CD20(I,J).dreal,CD20(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	printf(" I12S = %ld\n",I12S);
	CTR=0;
	printf(" L31 =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %ld",L31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" D31  =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %g",D31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	return 0;
}
#define I10(i) i10[i-1]
#define I30(i,j,k) i30[i-1][j-1][k-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
#define L30(i,j,k) l30[i-1][j-1][k-1]
#define L20(i,j) l20[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define D20(i,j) d20[i-1][j-1]
#define D30(i,j,k) d30[i-1][j-1][k-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define CD10(i) cd10[i-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD21(i,j) cd21[i-1][j-1]
int COEX()
{
	long int i10[2]={ 
		1, 2 	};
	long int I10S,I11S=0,I12S=0;
	long int i30[2][2][10];
	long int list[10]={ 
		1, 2, 1, 2, 1, 2, 1, 2, 1, 2 	};
	unsigned long int l10[10]={ 
		1, 0, 1, 0, 1, 0, 1, 0, 1, 0 	};
	unsigned long int L10S,L11S;
	unsigned long int l30[10][2][2],l31[10][2][2];
	unsigned long int l20[2][10]={ 
		{ 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 },
		                                  { 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 }	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	double   D10S,D11S=5.,D12S;
	double   d20[10][2]={ 
		{ 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 }	};
	double   d30[10][2][2],d31[10][2][2];
	COMPLEX16 cd10[10]={ 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			8, 8		},
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			1, 0		}, 
		{ 
			0, 1		} 
	};
	COMPLEX16 CD10S;
	COMPLEX16 cd20[2][10]={ 
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		},
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		} 
	};
	COMPLEX16 cd21[2][2]={ 
		{ 
			{ 
				1, 1			}, 
			{ 
				2, 2			} 
		},
		{ 
			{ 
				3, 3			}, 
			{ 
				4, 4			} 
		} 
	};
	COMPLEX16 cd30[10][2][2];
	long int N2=2,N10=10;
	long int I,J,K,CTR,NCWNR=8,CWNR=8;
	CTR=0;
	for(K=0;K<10;K++){
		for(J=0;J< 2;J++){
			for(I=0;I< 2;I++){
				if (CTR/10 ==0)
				{
					i30[I][J][K]=1;
				}
				else if (CTR/10 ==1)
				{
					i30[I][J][K]=2;
				}
				else if (CTR/10 ==2)
				{
					i30[I][J][K]=3;
				}
				else
				{
					i30[I][J][K]=4;
				}
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				l30[I][J][K]=0;
				l31[I][J][K]=0;
				d31[I][J][K]=0;
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				if (CTR/10 ==0)
				{
					d30[I][J][K]=1;
					cd30[I][J][K].dreal=1;
					cd30[I][J][K].dimag=1;
				}
				else if (CTR/10 ==1)
				{
					d30[I][J][K]=2;
					cd30[I][J][K].dreal=2;
					cd30[I][J][K].dimag=2;
				}
				else if (CTR/10 ==2)
				{
					d30[I][J][K]=3;
					cd30[I][J][K].dreal=3;
					cd30[I][J][K].dimag=3;
				}
				else
				{
					d30[I][J][K]=4;
					cd30[I][J][K].dreal=4;
					cd30[I][J][K].dimag=4;
				}
			}
		}
	}
	D12S=0.;
	printf("  ***** COMPRESS EXPAND METHOD *****\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N2;J++)
		{
			for(K=1;K<=N10;K++)
			{
				I10S=I10(I)*I30(I,J,K);
				L10S=L10(K) || L30(K,J,I);
				if (L10S==1)
				{
					D10S=D10(K)+D20(K,J)-D30(K,J,I);
					CD10S.dreal=  (  CD10(K).dreal*CD30(K,J,I).dreal
					    + CD10(K).dimag*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					CD10S.dimag=  (  CD10(K).dimag*CD30(K,J,I).dreal
					    - CD10(K).dreal*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					I11S=I11S+I10S+I;
					D11S=(D10(K) > D11S)? D10(K):D11S;
					L20(J,K)=L10S;
					R10(LIST(K))=D10S+(float)(I);
					CD20(J,LIST(K)).dreal=CD10S.dreal;
					CD20(J,LIST(K)).dimag=CD10S.dimag;
				}
				else
				{
					I12S=I12S-I10S;
					CD10S.dreal=CD21(J,I).dreal+CD30(LIST(K),J,I).dreal;
					CD10S.dimag=CD21(J,I).dimag+CD30(LIST(K),J,I).dimag;
					D12S=(double)(I10S)+D30(K,LIST(K),I);
					L11S=L10S || L20(J,K);
					L31(LIST(K),J,I)=L11S;
				}
				D10S=D10S+D10(J);
				D31(K,J,I)=D10S+CD10S.dreal+D12S;
LBL_30:
				;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}
	printf(" I11S = %ld\n",I11S);
	printf(" D11S = %g\n",D11S);
	CTR=0;
	printf(" L20  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" %lu",L20(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10  =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD20 =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" (%g,%g)",CD20(I,J).dreal,CD20(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	printf(" I12S = %ld\n",I12S);
	CTR=0;
	printf(" L31 =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %ld",L31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" D31  =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %g",D31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	return 0;
}
#define I10(i) i10[i-1]
#define I30(i,j,k) i30[i-1][j-1][k-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
#define L30(i,j,k) l30[i-1][j-1][k-1]
#define L20(i,j) l20[i-1][j-1]
#define L31(i,j,k) l31[i-1][j-1][k-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define D20(i,j) d20[i-1][j-1]
#define D30(i,j,k) d30[i-1][j-1][k-1]
#define D31(i,j,k) d31[i-1][j-1][k-1]
#define CD10(i) cd10[i-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD21(i,j) cd21[i-1][j-1]
int OPSEL()
{
	long int i10[2]={ 
		1, 2 	};
	long int I10S,I11S=0,I12S=0;
	long int i30[2][2][10];
	long int list[10]={ 
		1, 2, 1, 2, 1, 2, 1, 2, 1, 2 	};
	unsigned long int l10[10]={ 
		1, 0, 1, 0, 1, 0, 1, 0, 1, 0 	};
	unsigned long int L10S,L11S;
	unsigned long int l30[10][2][2],l31[10][2][2];
	unsigned long int l20[2][10]={ 
		{ 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 },
		                                  { 1, 0, 1, 0, 1, 1, 0, 1, 0, 1 }	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	double   D10S,D11S=5.,D12S;
	double   d20[10][2]={ 
		{ 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 1, 3 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 },
		                         { 2, 4 }	};
	double   d30[10][2][2],d31[10][2][2];
	COMPLEX16 cd10[10]={ 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			4, 4		}, 
		{ 
			8, 8		},
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			8, 8		}, 
		{ 
			1, 0		}, 
		{ 
			0, 1		} 
	};
	COMPLEX16 CD10S;
	COMPLEX16 cd20[2][10]={ 
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		},
		{ 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			}, 
			{ 
				0, 0			},
			{ 
				0, 0			}, 
			{ 
				0, 0			}                    
		} 
	};
	COMPLEX16 cd21[2][2]={ 
		{ 
			{ 
				1, 1			}, 
			{ 
				2, 2			} 
		},
		{ 
			{ 
				3, 3			}, 
			{ 
				4, 4			} 
		} 
	};
	COMPLEX16 cd30[10][2][2];
	long int N2=2,N10=10;
	long int I,J,K,CTR,NCWNR=8,CWNR=8;
	CTR=0;
	for(K=0;K<10;K++){
		for(J=0;J< 2;J++){
			for(I=0;I< 2;I++){
				if (CTR/10 ==0)
				{
					i30[I][J][K]=1;
				}
				else if (CTR/10 ==1)
				{
					i30[I][J][K]=2;
				}
				else if (CTR/10 ==2)
				{
					i30[I][J][K]=3;
				}
				else
				{
					i30[I][J][K]=4;
				}
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				l30[I][J][K]=0;
				l31[I][J][K]=0;
				d31[I][J][K]=0;
			}
		}
	}
	CTR=0;
	for(K=0;K< 2;K++){
		for(J=0;J< 2;J++){
			for(I=0;I<10;I++){
				if (CTR/10 ==0)
				{
					d30[I][J][K]=1;
					cd30[I][J][K].dreal=1;
					cd30[I][J][K].dimag=1;
				}
				else if (CTR/10 ==1)
				{
					d30[I][J][K]=2;
					cd30[I][J][K].dreal=2;
					cd30[I][J][K].dimag=2;
				}
				else if (CTR/10 ==2)
				{
					d30[I][J][K]=3;
					cd30[I][J][K].dreal=3;
					cd30[I][J][K].dimag=3;
				}
				else
				{
					d30[I][J][K]=4;
					cd30[I][J][K].dreal=4;
					cd30[I][J][K].dimag=4;
				}
			}
		}
	}
	printf("  ***** MASK OPERATION METHOD *****\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N2;J++)
		{
			for(K=1;K<=N10;K++)
			{
				I10S=I10(I)*I30(I,J,K);
				L10S=L10(K) || L30(K,J,I);
				if (L10S==1)
				{
					D10S=D10(K)+D20(K,J)-D30(K,J,I);
					D12S=D10S;
					CD10S.dreal=  (  CD10(K).dreal*CD30(K,J,I).dreal
					    + CD10(K).dimag*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					CD10S.dimag=  (  CD10(K).dimag*CD30(K,J,I).dreal
					    - CD10(K).dreal*CD30(K,J,I).dimag )
					    / (  CD30(K,J,I).dreal*CD30(K,J,I).dreal
					    + CD30(K,J,I).dimag*CD30(K,J,I).dimag );
					I11S=I11S+I10S+I;
					D11S=(D10(K) > D11S)?  D10(K):D11S;
					L20(J,K)=L10S;
					R10(LIST(K))=D10S+(float)(I);
					CD20(J,LIST(K))=CD10S;
				}
				else
				{
					D10S=D10(LIST(K));
					I12S=I12S-I10S;
					CD10S.dreal=CD21(J,I).dreal+CD30(LIST(K),J,I).dreal;
					CD10S.dimag=CD21(J,I).dimag+CD30(LIST(K),J,I).dimag;
					D12S=(double)(I10S)+D30(K,LIST(K),I);
					L11S=L10S || L20(J,K);
					L31(LIST(K),J,I)=L11S;
				}
				D10S=D10S+D10(J);
				D31(K,J,I)=D10S+CD10S.dreal+D12S;
LBL_30:
				;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}
	printf(" I11S = %ld\n",I11S);
	printf(" D11S = %g\n",D11S);
	CTR=0;
	printf(" L20  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" %lu",L20(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10  =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD20 =");
	for(J=1;J<=10;J++){
		for(I=1;I<=2;I++){
			printf(" (%g,%g)",CD20(I,J).dreal,CD20(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	printf(" I12S = %ld\n",I12S);
	CTR=0;
	printf(" L31 =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %ld",L31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" D31  =");
	for(K=1;K<=2;K++){
		for(J=1;J<=2;J++){
			for(I=1;I<=10;I++){
				printf(" %g",D31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	return 0;
}
