





#include <stdio.h>

class A { public: int a; A(int i) : a(i) { } };
class B { public: int b; B(int i) : b(i) { } };

int data_f[8] = { 0,0,0,0,0,0,0,0 };
int data_g[9] = { 0,0,0,0,0,0,0,0,0 };
int data_h[12] = { 0,0,0,0,0,0,0,0,0,0,0,0 };

void f(A, A,   double, double);
void f(A, B,   A,      int);
void f(A, int, B,      double);
void f(A, int, int,    int);
void f(B, A,   int,    double);
void f(B, B,   A,      int);
void f(B, int, B,      double);
void f(B, int, double, int);

void g(A,   A, int, int,    B);
void g(B,   B, int, double, A);
void g(int, A, int, int,    B);
void g(A,   B, A,   double, A);
void g(B,   A, A,   int,    B);
void g(int, B, A,   double, A);
void g(A,   A, B,   int,    B);
void g(B,   B, B,   double, A);
void g(int, A, B,   int,    B);

void h(A,   int, A, char,  int,    B);
void h(A,   A,   B, short, double, B);
void h(A,   int, B, int,   int,    A);
void h(A,   A,   A, long,  double, A);
void h(B,   int, A, char,  int,    B);
void h(B,   A,   B, short, double, B);
void h(B,   int, B, int,   int,    A);
void h(B,   A,   A, long,  double, A);
void h(int, int, A, char,  int,    B);
void h(int, A,   B, short, double, B);
void h(int, int, B, int,   int,    A);
void h(int, A,   A, long,  double, A);
int main()
{
    f(1,1,1,1);
    g(1,1,1,1,1);
    h(1,1,1,1,1,1);

    if( data_f[3] == 4 && data_g[2] == 5 && data_h[10] == 6 )
        printf("ok\n");
    else
        printf("ng\n");
}

void f(A a1, A a2,   double d1, double d2) 
    { data_f[0] = a1.a + a2.a + (int)d1 + (int)d2; } 
void f(A a1, B b,    A a2,     int i)
    { data_f[1] = a1.a + b.b + a2.a + i; }
void f(A a,  int i,  B b,      double d)
    { data_f[2] = a.a +  i + b.b + (int)d; }
void f(A a,  int i1, int i2,   int i3)
    { data_f[3] = a.a +  i1 + i2 + i3; }
void f(B b,  A a,    int i,    double d)
    { data_f[4] = b.b +  a.a + i + (int)d; }
void f(B b1, B b2,   A a,      int i)
    { data_f[5] = b1.b + b2.b + a.a + i; }
void f(B b1, int i,  B b2,     double d)
    { data_f[6] = b1.b + i + b2.b + (int)d; }
void f(B b,  int i1, double d, int i2)
    { data_f[7] = b.b +  i1 + (int)d + i2; }

void g(A a1,   A a2, int i1, int i2,   B b)
    { data_g[0] = a1.a + a2.a + i1 + i2 + b.b; }
void g(B b1,   B b2, int i,  double d, A a)
    { data_g[1] = b1.b + b2.b + i + (int)d + a.a; }
void g(int i1, A a,  int i2, int i3,   B b)
    { data_g[2] = i1 + a.a + i2 + i3 + b.b; }
void g(A a1,   B b,  A a2,   double d, A a3)
    { data_g[3] = a1.a + b.b + a2.a + (int)d + a3.a; }
void g(B b1,   A a1, A a2,   int i,    B b2)
    { data_g[4] = b1.b + a1.a + a2.a + i + b2.b; }
void g(int i,  B b,  A a1,   double d, A a2)
    { data_g[5] = i + b.b + a1.a + (int)d + a2.a; }
void g(A a1,   A a2, B b1,   int i,    B b2)
    { data_g[6] = a1.a + a2.a + b1.b + i + b2.b; }
void g(B b1,   B b2, B b3,   double d, A a)
    { data_g[7] = b1.b + b2.b + b3.b + (int)d + a.a; }
void g(int i1, A a,  B b1,   int i2,   B b2)
    { data_g[8] = i1 + a.a + b1.b + i2 + b2.b; }

void h(A a1,   int i1, A a2, char c,  int i2,   B b)
    { data_h[0] = a1.a + i1 + a2.a + c + i2 + b.b; }
void h(A a1,   A a2,   B b1, short s, double d, B b2)
    { data_h[1] = a1.a + a2.a + b1.b + s + (int)d + b2.b; }
void h(A a1,   int i1, B b,  int i2,  int i3,   A a2)
    { data_h[2] = a1.a + i1 + b.b + i2 + i3 + a2.a; }
void h(A a1,   A a2,   A a3, long l,  double d, A a4)
    { data_h[3] = a1.a + a2.a + a3.a + (int)l + (int)d + a4.a; }
void h(B b1,   int i1, A a,  char c,  int i2,   B b2)
    { data_h[4] = b1.b + i1 + a.a + c + i2 + b2.b; }
void h(B b1,   A a,    B b2, short s, double d, B b3)
    { data_h[5] = b1.b + a.a + b2.b + s + (int)d + b3.b; }
void h(B b1,   int i1, B b2, int i2,  int i3,   A a)
    { data_h[6] = b1.b + i1 + b2.b + i2 + i3 + a.a; }
void h(B b,    A a1,   A a2, long l,  double d, A a3)
    { data_h[7] = b.b + a1.a + a2.a + (int)l + (int)d + a3.a; }
void h(int i1, int i2, A a,  char c,  int i3,   B b)
    { data_h[8] = i1 + i2 + a.a + c + i3 + b.b; }
void h(int i,  A a,    B b1, short s, double d, B b2)
    { data_h[9] = i + a.a + b1.b + s + (int)d + b2.b; }
void h(int i1, int i2, B b,  int i3,  int i4,   A a)
    { data_h[10] = i1 + i2 + b.b + i3 + i4 + a.a; }
void h(int i,  A a1,   A a2, long l,  double d, A a3)
    { data_h[11] = i + a1.a + a2.a + (int)l + (int)d + a3.a; }
