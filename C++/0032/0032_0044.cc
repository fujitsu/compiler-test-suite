




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
c = cobj.operator char();
if (c != M_CHAR ) { printf("ng M_CHAR\n");}
sc = cobj.operator signed char();
if (sc != M_SCHAR ) { printf("ng M_SCHAR\n");}
uc = cobj.operator unsigned char();
if (uc != M_UCHAR ) { printf("ng M_UCHAR\n");}
s = cobj.operator short();
if (s != M_SHORT ) { printf("ng M_SHORT\n");}
ss = cobj.operator short();
if (ss != M_SHORT ) { printf("ng M_SHORT\n");}
us = cobj.operator unsigned short();
if (us != M_USHORT ) { printf("ng M_USHORT\n");}
i = cobj.operator int();
if (i != M_INT ) { printf("ng M_INT\n");}
si = cobj.operator int();
if (si != M_INT ) { printf("ng M_INT\n");}
ui = cobj.operator unsigned int();
if (ui != M_UINT ) { printf("ng M_UINT\n");}
f = cobj.operator float();
if (f != M_FLOAT ) { printf("ng M_FLOAT\n");}
d = cobj.operator double();
if (d != M_DOUBLE ) { printf("ng M_DOUBLE\n");}
ld = cobj.operator long double();
if (ld != M_LDOUBLE ) { printf("ng M_LDOUBLE\n");}
B br = cobj.operator B();

printf("ok\n");

return 0;
}
