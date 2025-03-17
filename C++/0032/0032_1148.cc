#include <stdio.h>
void f(int i){}
void ff(int i){}

int a;

class A {
  public:
   static int i;
   static void fff(int i){}
};


template < class T, void (*fp)(int)>
class Fp{
 T sii;
};

template < class T, int *p>
class Vp{
 T sii;
};


template < class T, int *p>
class CSp{
 T sii;
};

template < class T, void (*p)(int)>
class CSFp{
 T sii;
};



unsigned long uLv=5;
template < class T, unsigned long *i>
class uLp{
 T uli;
};



int Av[3] = { 1,2,3};
template < class T, int i[] >
class iA{
 T uli;
};






int main(){

 Fp<int,f>  Fpobj1;            
 Fp<int,&f> *Fpptr1 =&Fpobj1;  
 Fp<int,&ff>  Fpobj2;          
 Vp<char, &a> Vpobj;           
 CSp<short, &A::i> CSpobj;     
 CSFp<short, &A::fff> CSFpobj; 

 uLp<unsigned long *, &uLv> uLpobj; 
 iA<int, Av> iAobj;                 
 printf("ok\n");

}




