





#include <stdio.h>

class A { public: int a; A(int i) : a(i) { } };
class B { public: int b; B() { } };

int data_f[4] = { 0,0,0,0 };
int data_g[5] = { 0,0,0,0,0 };
int data_h[5] = { 0,0,0,0,0 };

void f(A, A, int);
void f(A, A, double);
void f(A, B, int);
void f(A, B, double);

void g(A, A,   int);
void g(A, A,   double);
void g(A, int, int);
void g(A, int, double);
void g(B, int, int);

void h(A,      A,   A);
void h(A,      int, A);
void h(A,      int, double);
void h(int,    int, double);
void h(double, int, double);
int main()
{
    f(1,1,1);
    g(1,1,1);
    h(1,1,1);

    if( data_f[0] == 3 && data_g[2] == 3 && data_h[3] == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}

void f(A a1, A a2, int i)    { data_f[0] = a1.a + a2.a + i; }
void f(A a1, A a2, double d) { data_f[1] = a1.a + a2.a + (int)d; }
void f(A a,  B b,  int i)    { data_f[2] = a.a + b.b + i; }
void f(A a,  B b,  double d) { data_f[3] = a.a + b.b + (int)d; }

void g(A a1, A a2,  int i)    { data_g[0] = a1.a + a2.a + i; }
void g(A a1, A a2,  double d) { data_g[1] = a1.a + a2.a + (int)d; }
void g(A a,  int i, int j)    { data_g[2] = a.a + i + j; } 
void g(A a,  int i, double d) { data_g[3] = a.a + i + (int)d; }
void g(B b,  int i, int j)    { data_g[4] = b.b + i + j; }

void h(A a1,      A a2,  A a3)      { data_h[0] = a1.a + a2.a + a3.a; }
void h(A a1,      int i, A a2)      { data_h[1] = a1.a + i + a2.a; }
void h(A a,       int i, double d)  { data_h[2] = a.a + i + (int)d; }
void h(int i,     int j, double d)  { data_h[3] = i + j + (int)d; }
void h(double d1, int i, double d2) { data_h[4] = (int)d1 + i + (int)d2; }

