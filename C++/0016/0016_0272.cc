int i=100;
int &ri=i;
int *pi=&i;
int **ppi=&pi;

int a[3]={10,20,30};

int (&r)[3]=a;
int (*p)[3]=&a;
int (**pp)[3]=&p;
int (*&pr)[3]=p;
int (**&ppr)[3]=pp;
int (*apa[2])[3]={&a,&a};

typedef int T[3];
typedef int Ti;

Ti ti=100;
Ti &rti=ti;
Ti *pti=&ti;
Ti **ppti=&pti;

T &tr = a;
T *tp = &a;
T **tpp = &tp;
T *tap[2] = {&a,&a};
T *&tpr = tp;
T **&tppr = tpp;

struct S {
  int a,b;
};
struct S sobj1={1,2};
struct S sobj2={3,4};
struct S sobj3={5,6};
typedef struct S TS;
typedef TS *TSP;
typedef TSP TSPA[3];
typedef TSPA *TSPAP;
typedef TSPAP TSPAPA[3];
struct S *asp0[3]={&sobj1,&sobj2,&sobj3};
TS       *asp1[3]={&sobj1,&sobj2,&sobj3};
TSP       asp2[3]={&sobj1,&sobj2,&sobj3};
TSPA     tspa0 = {&sobj1,&sobj2,&sobj3};
TSPA    *tspa1 = &tspa0;
TSPA     tspa2[2] = {0,0,0,&sobj1,&sobj2,&sobj3};
TSPA   (*tspa3)[2] = &tspa2;
TSPAP  tspap0 = &tspa0;
TSPAP  tspap1[3] = {0,0,&tspa0};
TSPAPA tspapa = {0,&tspa0,0};

#include <stdio.h>
int main(){
  puts("ok");
}
