





#include <stdio.h>

class A { public: int a; A(int i) : a(i) { } };
class B { public: int b; B() { } };

int data_f[4] = { 0,0,0,0 };
int data_g[6] = { 0,0,0,0,0,0 };
int data_h[4] = { 0,0,0,0 };
int data_ff[4] = { 0,0,0,0 };

void f(A, int);
void f(A, double);
void f(B, int);
void f(B, double);

void ff(A, A);
void ff(A, double);
void ff(B, int);
void ff(B, double);

void g(A,   int);
void g(A,   double);
void g(B,   int);
void g(B,   double);
void g(int, int);
void g(int, double);

void h(A,   double);
void h(B,   int);
void h(B,   double);
void h(int, double);
int main()
{
    f(1,1);
    ff(1,1);
    g(1,1);
    h(1,1);

    if( data_f[0] == 2 && data_ff[1] == 2 && 
        data_g[4] == 2 && data_h[3] == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
void f(A a, int i)    { data_f[0] = a.a + i; }
void f(A a, double d) { data_f[1] = a.a + (int)d; }
void f(B b, int i)    { data_f[2] = b.b + i; }
void f(B b, double d) { data_f[3] = b.b + (int)d; }

void ff(A a1, A a2)     { data_ff[0] = a1.a + a2.a; }
void ff(A a,  double d) { data_ff[1] = a.a + (int)d; }
void ff(B b,  int i)    { data_ff[2] = b.b + i; }
void ff(B b,  double d) { data_ff[3] = b.b + (int)d; }


void g(A a,   int i)    { data_g[0] = a.a + i; }
void g(A a,   double d) { data_g[1] = a.a + (int)d; }
void g(B b,   int i)    { data_g[2] = b.b + i; }
void g(B b,   double d) { data_g[3] = b.b + (int)d; }
void g(int i, int j)    { data_g[4] = i + j; }
void g(int i, double d) { data_g[5] = i + (int)d; }

void h(A a,   double d) { data_h[0] = a.a + (int)d; }
void h(B b,   int i)    { data_h[1] = b.b + i; }
void h(B b,   double d) { data_h[2] = b.b + (int)d; }
void h(int i, double d) { data_h[3] = i + (int)d; }

