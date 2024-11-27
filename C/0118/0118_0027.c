#include <stdio.h>
#define N 100
#define Correct_answer 9700

double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],a10[N],a11[N],a12[N],a13[N],a14[N],a15[N],a16[N],a17[N],a18[N];
double b1[N],b2[N],b3[N],b4[N],b5[N],b6[N],b7[N],b8[N],b9[N],b10[N],b11[N],b12[N],b13[N],b14[N],b15[N],b16[N],b17[N],b18[N];
double y1[N][1],y2[N][1],y3[N][1],y4[N][1],y5[N][1],y6[N][1],y7[N][1],y8[N][1],y9[N][1],y10[N][1],y11[N][1],y12[N][1],y13[N][1],y14[N][1],y15[N][1],y16[N][1],y17[N][1],y18[N][1];
int    c[N];
double e[N][1];
double d[N];
double x1[N], x2[N], x3[N], x4[N], x5[N], x6[N], x7[N], x8[N];

void sub1(int n)
{
  int i;
  for (i=0; i<n; i++) {
    x1[i] = a1[i];
  }
}

void sub2(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x2[i] = a1[i]+a2[i]+a3[i]+a4[i]+a5[i]+a6[i]+a7[i]+a8[i]+a9[i]+a10[i]+a11[i]+a12[i]+a13[i]+a14[i]+a15[i];
  }
}

void sub3(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x3[i] = a1[i]+a2[i]+a3[i]+a4[i]+a5[i]+a6[i]+a7[i]+a8[i]+a9[i]+a10[i]+a11[i]+a12[i]+a13[i]+a14[i]+a15[i]+a16[i];
  }
}

void sub4(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x4[i] = a1[i]+a2[i]+a3[i]+a4[i]+a5[i]+a6[i]+a7[i]+a8[i]+a9[i]+a10[i]+a11[i]+a12[i]+e[i][0]+d[c[i]];
  }
}

void sub5(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x5[i] = a1[i]+a2[i]+a3[i]+a4[i]+a5[i]+a6[i]+a7[i]+a8[i]+a9[i]+a10[i]+a11[i]+a12[i]+a13[i]+a14[i]+e[i][0]+d[c[i]];
  }
}

void sub6(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x6[i] = a1[i]+a2[i]+a3[i]+a4[i]+a5[i]+a6[i]+a7[i]+a8[i]+a9[i]+a10[i]+a11[i]+a12[i]+a13[i]+a14[i]+a15[i]+e[i][0]+d[c[i]];
  }
}

void sub7(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x7[i] = y1[i][0]+y2[i][0]+y3[i][0]+y4[i][0]+y5[i][0]+y6[i][0]+y7[i][0]+y8[i][0]+y9[i][0]+y10[i][0]+y11[i][0]+y12[i][0]+y13[i][0]+y14[i][0]+y15[i][0]+y16[i][0]+y17[i][0]+y18[i][0];
  }
}

void sub8(int n)
{
  int i;

  for (i=0; i<n; i++) {
    x8[i] = b1[c[i]]+b2[c[i]]+b3[c[i]]+b4[c[i]]+b5[c[i]]+b6[c[i]]+b7[c[i]]+b8[c[i]]+b9[c[i]]+b10[c[i]]+b11[c[i]]+b12[c[i]]+b13[c[i]]+b14[c[i]]+b15[c[i]]+b16[c[i]]+b17[c[i]]+b18[c[i]];
  }
}

void init(void)
{
  int i;
  for (i=0; i<N; i++) {
    x1[i]=0.;
    x2[i]=0.;
    x3[i]=0.;
    x4[i]=0.;
    x5[i]=0.;
    x6[i]=0.;
    x7[i]=0.;
    x8[i]=0.;
    a1[i]=1.;
    a2[i]=1.;
    a3[i]=1.;
    a4[i]=1.;
    a5[i]=1.;
    a6[i]=1.;
    a7[i]=1.;
    a8[i]=1.;
    a9[i]=1.;
    a10[i]=1.;
    a11[i]=1.;
    a12[i]=1.;
    a13[i]=1.;
    a14[i]=1.;
    a15[i]=1.;
    a16[i]=1.;
    a17[i]=1.;
    a18[i]=1.;
    b1[i]=1.;
    b2[i]=1.;
    b3[i]=1.;
    b4[i]=1.;
    b5[i]=1.;
    b6[i]=1.;
    b7[i]=1.;
    b8[i]=1.;
    b9[i]=1.;
    b10[i]=1.;
    b11[i]=1.;
    b12[i]=1.;
    b13[i]=1.;
    b14[i]=1.;
    b15[i]=1.;
    b16[i]=1.;
    b17[i]=1.;
    b18[i]=1.;
    y1[i][0]=1.;
    y2[i][0]=1.;
    y3[i][0]=1.;
    y4[i][0]=1.;
    y5[i][0]=1.;
    y6[i][0]=1.;
    y7[i][0]=1.;
    y8[i][0]=1.;
    y9[i][0]=1.;
    y10[i][0]=1.;
    y11[i][0]=1.;
    y12[i][0]=1.;
    y13[i][0]=1.;
    y14[i][0]=1.;
    y15[i][0]=1.;
    y16[i][0]=1.;
    y17[i][0]=1.;
    y18[i][0]=1.;
    e[i][0]=1.;
    d[i]=1.;
    c[i]=i;
  }
}

int main()
{
  int i,res;

  init();
  sub1(N);
  sub2(N);
  sub3(N);
  sub4(N);
  sub5(N);
  sub6(N);
  sub7(N);
  sub8(N);

  res = 0;
  for (i=0; i<N; i++) {
    res += (int)(x1[i]+x2[i]+x3[i]+x4[i]+x5[i]+x6[i]+x7[i]);
  }

  if (res == Correct_answer) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("result = %d , Correct_answer = %d \n",res,Correct_answer);
  }

  return 0;
}
