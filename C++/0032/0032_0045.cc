




#include <stdio.h>
int count=0;

enum { M_CHAR=1,M_SCHAR,M_UCHAR,M_SHORT,M_USHORT,M_INT,M_UINT,M_FLOAT,M_DOUBLE,M_LDOUBLE};

class B { public: int a;}bobj; 

template <class T>
class A {
 public:
 
 operator char(){ count++;return (char)M_CHAR;}
 operator signed char(){ count++;return (signed char)M_SCHAR;}
 operator unsigned char(){ count++;return (unsigned char)M_UCHAR;}
 operator short(){ count++;return (short)M_SHORT;}

 operator unsigned short(){ count++;return (unsigned short)M_USHORT;}
 operator int(){count++;return (int)M_INT;}

 operator unsigned int(){  count++; return (unsigned int)M_UINT;}
 operator float(){  count++; return (float)M_FLOAT;}
 operator double(){ count++; return (double)M_DOUBLE;}
 operator long double(){  count++; return (long double)M_LDOUBLE;}
 operator B(){  return bobj;}
};


A<char> cobj,cobj2,*acp;
char c ;
signed char sc ;
unsigned char uc ;
short s;
signed short ss ;
unsigned short us ;
int  i;
signed int si;
unsigned int ui;

float f;
double d;
long double ld;

int main(){
c = (char)cobj;
if (c != M_CHAR ) { printf("ng M_CHAR\n");}
sc = cobj;
if (sc != M_SCHAR ) { printf("ng M_SCHAR\n");}
uc = (unsigned char)cobj;
if (uc != M_UCHAR ) { printf("ng M_UCHAR\n");}
s = cobj;
if (s != M_SHORT ) { printf("ng M_SHORT\n");}
ss = ( short)cobj;
if (ss != M_SHORT ) { printf("ng M_SHORT\n");}
us = cobj;
if (us != M_USHORT ) { printf("ng M_USHORT\n");}
i = cobj;
if (i != M_INT ) { printf("ng M_INT\n");}
si = ( int)cobj;
if (si != M_INT ) { printf("ng M_INT\n");}
ui = cobj;
if (ui != M_UINT ) { printf("ng M_UINT\n");}
f = cobj;
if (f != M_FLOAT ) { printf("ng M_FLOAT\n");}
d = cobj;
if (d != M_DOUBLE ) { printf("ng M_DOUBLE\n");}
ld = cobj;
if (ld != M_LDOUBLE ) { printf("ng M_LDOUBLE\n");}
B br = (B)cobj;

printf("ok\n");

return 0;
}
