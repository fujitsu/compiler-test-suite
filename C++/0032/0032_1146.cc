#include <stdio.h>


template < class T, char i>
class C{
 T ci;
};

template < class T, signed char i>
class sC{
 T sci;
};

template < class T, unsigned char i>
class uC{
 T uci;
};


template < class T, short i>
class SI{
 T sii;
};

template < class T, signed short i>
class sSI{
 T ssii;
};
template < class T, unsigned short i>
class uSI{
 T usii;
};

template < class T, int i>
class I{
 T ii;
};

template < class T, signed int i>
class sI{
 T sii;
};

template < class T, unsigned int i>
class usI{
 T usii;
};


template < class T, long i>
class L{
 T li;
};

template < class T, signed long i>
class sL{
 T sli;
};

template < class T, unsigned long i>
class uL{
 T uli;
};


enum A { e=3, e1};
template < class T, A i>
class En{
 T uli;
};
















int main(){

 C<char,'A'>                  Cobj;
 sC<signed char, (signed char)127>         sCobj;
 uC<unsigned char, (unsigned char)255>       uCobj;
 SI<short,(short)-32767>             SIobj;
 sSI<signed short, (signed short)32767>     sSIobj;
 uSI<unsigned short, (unsigned short)65535>   uSIobj;
 I<int, (int)-32767>               Iobj;
 sI<signed int, (signed int)32767>        sIobj;
 usI<unsigned int, (unsigned int)65535>     usIobj;
 L<long, (long)-2147483647>         lboj;
 sL<signed long, (signed long)2147483647>  sLobj;
 uL<unsigned long, (unsigned long)4294967295>  uLobj;


 En<int,e1 >  Enobj;



 printf("ok\n");



}
