template <class T>
class B {
public:
  int i;
  void Bf(void){}
  B(){}
};

template <class T>
class A { 
public: 
  class I {
  public:
  
  static char c;
  static unsigned char uc;
  static short s;
  static unsigned short us;
  static int i;
  static unsigned int ui;
  static float f;
  static double d;
  static long double ld;
  static const volatile int cvf; 
  
  static long double *ldp;
  static long double &ldr;
  static unsigned short **uspp;
  
  static int iarray[3];
  static B<T> carray1[5];
  static B<T> carray2[];
  
  static B<T> bobj;
  static B<T>& bobjr;
  static B<T>* bobjp;
  
  typedef int  xxx;
  static xxx t1;
  typedef B<T> yyy;
  static yyy t2;
  
  static int B<T>::*bip;
  static void  (B<T>::*bfp)(void);
 };
};

template <class T> char A<T>::I::c;
template <class T> unsigned char A<T>::I::uc;
template <class T> short A<T>::I::s;
template <class T> unsigned short A<T>::I::us;
template <class T> int A<T>::I::i;
template <class T> unsigned int A<T>::I::ui;
template <class T> float A<T>::I::f;
template <class T> double A<T>::I::d;
template <class T> long double A<T>::I::ld;







#if defined (__cplusplus) && __cplusplus >= 201103L
template <class T> const volatile int A<T>::I::cvf = 0;
#else
template <class T> const volatile int A<T>::I::cvf;
#endif 


template <class T> long double *A<T>::I::ldp;







#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
static long double tmp_ld = 0;
template <class T> long double &A<T>::I::ldr = tmp_ld;
#else
template <class T> long double &A<T>::I::ldr;
#endif

template <class T> unsigned short ** A<T>::I::uspp;

template <class T> int A<T>::I::iarray[3];
template <class T> B<T> A<T>::I::carray1[5];
template <class T> B<T> A<T>::I::carray2[1];

template <class T> B<T> A<T>::I::bobj;







#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
static B<int> tmp_At;
template <class T> B<T>& A<T>::I::bobjr = tmp_At;
#else
template <class T> B<T>& A<T>::I::bobjr;
#endif

template <class T> B<T>* A<T>::I::bobjp;
template <class T> typename A<T>::I::xxx A<T>::I::t1;
template <class T> typename A<T>::I::yyy A<T>::I::t2;

template <class T> int B<T>::*(A<T>::I::bip);
template <class T> void  (B<T>::*(A<T>::I::bfp))();


A<int> x;
A< B<int> > yy;
B<int> bobj;
B<B<int> > bobj2;


template<> char A<int>::I::c='\0';
template<> unsigned char A<int>::I::uc='\0';
template<> short A<int>::I::s=0;
template<> unsigned short A<int>::I::us=0;
template<> int A<int>::I::i=0;
template<> unsigned int A<int>::I::ui=0;
template<> float A<int>::I::f=0;
template<> double A<int>::I::d=0;
template<> long double A<int>::I::ld=0;


template<> long double *A<int>::I::ldp=0;
template<> long double &A<int>::I::ldr=A<int>::I::ld=0;
template<> unsigned short ** A<int>::I::uspp=0;

template<> int A<int>::I::iarray[3]={};
template<> B<int> A<int>::I::carray1[5]={};

B<int> tmp;
template<> B<int> A<int>::I::bobj=tmp;
template<> B<int> A<int>::I::carray2[]={bobj};

template<> B<int>& A<int>::I::bobjr=bobj;;
template<> B<int>* A<int>::I::bobjp=0;
template<> A<int>::I::xxx A<int>::I::t1=0;
template<> A<int>::I::yyy A<int>::I::t2=bobj;

template<> int B<int>::*(A<int>::I::bip)=0;
template<> void  (B<int>::*(A<int>::I::bfp))()=0;

template<> char A<B<int> >::I::c='\0';
template<> unsigned char A<B<int> >::I::uc='\0';
template<> short A<B<int> >::I::s=0;
template<> unsigned short A<B<int> >::I::us=0;
template<> int A<B<int> >::I::i=0;
template<> unsigned int A<B<int> >::I::ui=0;
template<> float A<B<int> >::I::f=0;
template<> double A<B<int> >::I::d=0;
template<> long double A<B<int> >::I::ld=0;


template<> long double *A<B<int> >::I::ldp=0;
template<> long double &A<B<int> >::I::ldr=A<B<int> >::I::ld=0;
template<> unsigned short ** A<B<int> >::I::uspp=0;

template<> int A<B<int> >::I::iarray[3]={};
template<> B<B<int > > A<B<int> >::I::carray1[5]={};
template<> B<B<int > > A<B<int> >::I::carray2[]={bobj2};

template<> B<B<int > > A<B<int> >::I::bobj=bobj2;
template<> B<B<int > >& A<B<int> >::I::bobjr=bobj2;
template<> B<B<int > >* A<B<int> >::I::bobjp=0;
template<> A<B<int> >::I::xxx A<B<int> >::I::t1=0;
template<> A<B<int> >::I::yyy A<B<int> >::I::t2=bobj2;

template<> int B<B<int > >::*(A<B<int> >::I::bip)=0;
template<> void  (B<B<int > >::*(A<B<int> >::I::bfp))();


#include <stdio.h>
int main(){
unsigned short *usp;
A<int>::I::c = 'a';
A<int>::I::uc = 1;
A<int>::I::s = 2;
A<int>::I::us =3;
A<int>::I::i = 4;
A<int>::I::ui= 5;
A<int>::I::f=6.0;
A<int>::I::d = 7.0;
A<int>::I::ld = 8.0;


A<int>::I::ldp= &A<int>::I::ld ;
A<int>::I::ldr=A<int>::I::ld ;
A<int>::I::uspp = &(usp);

A<int>::I::iarray[2]=8;
A<int>::I::carray1[4]=bobj;
A<int>::I::carray2[0]=bobj;

A<int>::I::bobj =bobj;
A<int>::I::bobjr=bobj;
A<int>::I::bobjp=&bobj;
A<int>::I::t1=9;
A<int>::I::t2=bobj;

A<int>::I::bip=&B<int>::i;
A<int>::I::bfp = &B<int>::Bf;


A<B<int> >::I::c ='a';
A<B<int> >::I::uc =1;
A<B<int> >::I::s=2;
A<B<int> >::I::us=3;
A<B<int> >::I::i=4;
A<B<int> >::I::ui=5;
A<B<int> >::I::f=6.0;
A<B<int> >::I::d=7.0;
A<B<int> >::I::ld=8.0;


A<B<int> >::I::ldp=&A<B<int> >::I::ld;
A<B<int> >::I::ldr=A<B<int> >::I::ld;
A<B<int> >::I::uspp=&usp;

A<B<int> >::I::iarray[2]=8;
A<B<int> >::I::carray1[4]=bobj2;
A<B<int> >::I::carray2[0]=bobj2;

A<B<int> >::I::bobj =bobj2;
A<B<int> >::I::bobjr=bobj2;
A<B<int> >::I::bobjp=&bobj2;
A<B<int> >::I::t1=9;
A<B<int> >::I::t2=bobj2;

A<B<int> >::I::bip=&B<B<int> >::i;
A<int>::I::bfp = &B<int>::Bf;


 puts("ok"); 
}
