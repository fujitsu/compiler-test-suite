#include <stdio.h>



signed   char  sc() { signed   char  sc=1; return sc; }
unsigned char  uc() { unsigned char  uc=1; return uc; }
signed   short ss() { signed   short ss=1; return ss; }
unsigned short us() { unsigned short us=1; return us; }
signed   int   si() { signed   int   si=1; return si; }
unsigned int   ui() { unsigned int   ui=1; return ui; }
signed   long  sl() { signed   long  sl=1; return sl; }
unsigned long  ul() { unsigned long  ul=1; return ul; }
               	                     
float          f()  { float          f=1.0; return f; }
double         d()  { double         d=1.0; return d; }
long double    ld() { long double    ld=1.0;return ld; }
int main()
{
   if(  sc() == 1 &&  uc() == 1 &&
        ss() == 1 &&  us() == 1 &&
        si() == 1 &&  ui() == 1 &&
        sl() == 1 &&  ul() == 1 &&
        f()  == 1.0 &&
        d()  == 1.0 &&
        ld()  == 1.0 ) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}
