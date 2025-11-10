extern int unroll_for(int a[], int is, int ie, int ans);
extern int unroll_while(int a[], int is, int ie, int ans);
extern int unroll_dowhile(int a[], int is, int ie, int ans);
extern int unroll_ifgoto(int a[], int is, int ie, int ans);
extern void unroll_for2(int a[], int ans);
extern void unroll_while2(int a[], int ans);
extern void unroll_dowhile2(int a[], int ans);
extern void unroll_ifgoto2(int a[], int ans);

static void init_a(int a[], int is, int ie);

#define N 20
#define ANS 190

int main()
{
  int is, ie, k;
  int a[N];
  
  init_a(a, 0, N);

  is = 0;
  ie = N;
  k = unroll_for(a,is,ie,ANS);

  is = 0;
  ie = k;
  (void)unroll_for(a,is,ie,ANS);

  unroll_for2(a,ANS);

  is = 0;
  ie = N;
  k = unroll_while(a,is,ie,ANS);

  is = 0;
  ie = k;
  (void)unroll_while(a,is,ie,ANS);

  unroll_while2(a,ANS);

  is = 0;
  ie = N;
  k = unroll_dowhile(a,is,ie,ANS);

  is = 0;
  ie = k;
  (void)unroll_dowhile(a,is,ie,ANS);

  unroll_dowhile2(a,ANS);

  is = 0;
  ie = N;
  k = unroll_ifgoto(a,is,ie,ANS);

  is = 0;
  ie = k;
  (void)unroll_ifgoto(a,is,ie,ANS);

  unroll_ifgoto2(a,ANS);
}

static void init_a(int a[], int is, int ie) 
{
  int i;
  for (i = is; i < ie; ++i) {
    a[i] = i;
  }
}
