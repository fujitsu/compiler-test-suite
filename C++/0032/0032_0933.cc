




#include <stdio.h>

#define ON 1
enum DATA { c, s, i, l, p, f, d, ld, cl, st, un, en };
int chk_data[12] = { 0,0,0,0,0,0,0,0,0,0,0,0 };

class CL  { public: int i; CL(int x) : i(x) { } };
struct ST { int i; ST(int x) : i(x) { } };
union UN  { int i; UN(int x) : i(x) { } };
enum EN   { e0, e1 };

void func(char x)        { x++;   chk_data[c]  = ON; }
void func(short x)       { x++;   chk_data[s]  = ON; }
void func(int x)         { x++;   chk_data[i]  = ON; }
void func(long x)        { x++;   chk_data[l]  = ON; }
void func(int *x)        { x++;   chk_data[p]  = ON; }
void func(float x)       { x++;   chk_data[f]  = ON; }
void func(double x)      { x++;   chk_data[d]  = ON; }
void func(long double x) { x++;   chk_data[ld] = ON; }
void func(CL x)          { x.i++; chk_data[cl] = ON; }
void func(ST x)          { x.i++; chk_data[st] = ON; }
void func(UN x)          { x.i++; chk_data[un] = ON; }
void func(EN x)          { int i=x; chk_data[en] = ON; }
int main()
{
    char c = 'a';          func(c);
    short s = 1;           func(s);
    int i = 2;             func(i);
    long l = 3;            func(l);
    int *p = &i;           func(p);
    float f = 1.0f;        func(f);
    double d = 2.0;        func(d);
    long double ld = 3.0l; func(ld);
    CL cobj = 1;           func(cobj);
    ST sobj = 2;           func(sobj);
    UN uobj = 3;           func(uobj);
    EN eobj = e1;          func(eobj);

    for( i=0 ; i<12 ; i++ )
        if( chk_data[i] == ON );
        else break;

    if( i == 12 )
        printf("ok\n");
    else
        printf("ng\n");
}
