#include <stdio.h>
#include <stdlib.h>

typedef struct node 
{
  struct node *next;
  double data1;
	double data2;
} NODE;

#define N1 100000
#define N2 200000
#define S 2
#define ANS -166660
int main()
{
	NODE *nlt, *ln;
  float  *d1, *d2;
  double *r1, *r2, r3[N1];
  double rsum, *rd1, *rd2, bd;
	int i, j;

  d1 = (float *)calloc(S,sizeof(double)/2);
  d2 = (float *)calloc(S/2,sizeof(double));
	d1[0]=d1[1]=(float)1.0;
	d2[0]=d2[1]=(float)2.0;

  if (d1[0] == (float)1.0 && d1[1] == (float)1.0) {
    r1 = (double *)calloc(N1,sizeof(double));
		if (d2[0] == (float)2.0 && d2[1] == (float)2.0) {
			r2 = (double *)calloc(N2,sizeof(double));
			nlt = (NODE *)calloc(S,sizeof(NODE));
		}
	}

	for (i=0; i<N1; i++) {
		r1[i] = (i%2) ? (double)((i%N1)/N1) : (double)1;
		r2[i] = (i%3) ? (double)((i%N2)/N2) : (double)(i/N2);
	}
	for (; i<N2; i++) {
		r2[i] = (i%2) ? (double)1 : (double)(i/N2);
	}
	for (i=0; i<S; i++) {
		ln = &nlt[i];
		for (j=0; j<N2; j++) {
			ln->next = (NODE *)calloc(1,sizeof(NODE));
			switch(i) {
			case 0:
				if (j < N1) {
					ln->data1 = r1[j]*r2[j];
					ln ->data2 = r1[j]+r2[j];
				}
				else {
					ln->data1 = r2[j]*r2[j];
					ln->data2 = r2[j]+r2[j];
				}
			break;
			case 1:
				if (j < N1) {
					ln->data1 = r1[j]*r1[j];
					ln->data2 = r1[j]+r1[j];
				}
				else {
					ln->data1 = r1[j%N1]*r2[j];
					ln->data2 = r1[j%N1]*r2[j];
				}
			break;
			default:
				break;
			}
			ln = ln->next;
		}
		ln = NULL;
	}

	for (i=0; i<S; i++) {
		rsum = (double)0.0;
		ln = &nlt[i];
		while (ln != NULL) {
			rsum = rsum + ln->data1*ln->data2;
			ln = ln->next;
		}
		switch (i) {
		case 0:
			rd1 = (double *)calloc(1,sizeof(double));
			*rd1 = rsum;
			break;
		case 1:
			rd2 = (double *)calloc(1,sizeof(double));
			*rd2 = rsum;
			break;
		default:
			break;
		}
	}

	if (rd1 != NULL && rd2 != NULL)
		*rd1 = *rd1 + *rd2;
  else {
		printf("Error !\n");
    exit(1);
	}

	for (i=0; i<S; i++) {
		ln = &nlt[i];
		for (j=0; j<N2; j++) {
			rsum = rsum + ln->data1*ln->data2;
			ln = ln->next;
		}
	}

	rsum = (rsum + *rd1) / (*rd1 + *rd2);
	bd = *rd2 / *rd1;

	for (i=0; i<S; i++) {
		for (j=0; j<N1-3; j++)
			r3[j] = rsum - r1[j]*(rsum*r2[j+4]-bd*r2[j+5]);
    *rd1 = (double)0.0;
		for (j=0; j<N1-3; j++)
			*rd1 = *rd1 - r3[j];
	}

	rsum = rsum + *rd1;

	if ((int)rsum == ANS)
		printf("*** OK ***\n");
	else
		printf("*** NG ***\n");
}
