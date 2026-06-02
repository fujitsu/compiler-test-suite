struct TAG{
  int a;
  char b;
  float c;
};

__thread char a;
__thread short b;
__thread int c;
__thread long d;
__thread long long e;
__thread float f;
__thread double g;
__thread long double h;
__thread struct TAG i;

__thread char aa[2];
__thread short ba[3];
__thread int ca[4];
__thread long da[5];
__thread long long ea[6];
__thread float fa[7];
__thread double ga[8];
__thread long double ha[9];
__thread struct TAG ia[10];

__thread char *pa;
__thread short *pb;
__thread int *pc;
__thread long *pd;
__thread long long *pe;
__thread float *pf;
__thread double *pg;
__thread long double *ph;
__thread struct TAG *pi;
