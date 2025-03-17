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

template <class T> char A<T>::c;
template <class T> unsigned char A<T>::uc;
template <class T> short A<T>::s;
template <class T> unsigned short A<T>::us;
template <class T> int A<T>::i;
template <class T> unsigned int A<T>::ui;
template <class T> float A<T>::f;
template <class T> double A<T>::d;
template <class T> long double A<T>::ld;







#if defined (__cplusplus) && __cplusplus >= 201103L
template <class T> const volatile int A<T>::cvf = 0;
#else
template <class T> const volatile int A<T>::cvf;
#endif


template <class T> long double *A<T>::ldp;







#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
static long double tmp_ld = 0;
template <class T> long double &A<T>::ldr = tmp_ld;
#else
template <class T> long double &A<T>::ldr;
#endif

template <class T> unsigned short ** A<T>::uspp;

template <class T> int A<T>::iarray[3];
template <class T> B<T> A<T>::carray1[5];
template <class T> B<T> A<T>::carray2[1];

template <class T> B<T> A<T>::bobj;







#if defined (__cplusplus) && (__cplusplus >= 201103L || __GNUC__)
static B<int> tmp_At;
template <class T> B<T>& A<T>::bobjr = tmp_At;
#else 
template <class T> B<T>& A<T>::bobjr;
#endif

template <class T> B<T>* A<T>::bobjp;
template <class T> typename A<T>::xxx A<T>::t1;
template <class T> typename A<T>::yyy A<T>::t2;

template <class T> int B<T>::*(A<T>::bip);
template <class T> void  (B<T>::*(A<T>::bfp))();


A<int> x;
A< B<int> > yy;
B<int> bobj;
B<B<int> > bobj2;


template<> char A<int>::c='\0';
template<> unsigned char A<int>::uc='\0';
template<> short A<int>::s=0;
template<> unsigned short A<int>::us=0;
template<> int A<int>::i=0;
template<> unsigned int A<int>::ui=0;
template<> float A<int>::f=0;
template<> double A<int>::d=0;
template<> long double A<int>::ld=0;


template<> long double *A<int>::ldp=0;
template<> long double &A<int>::ldr=A<int>::ld=0;
template<> unsigned short ** A<int>::uspp=0;

template<> int A<int>::iarray[3]={};
template<> B<int> A<int>::carray1[5]={};

B<int> tmp;
template<> B<int> A<int>::bobj=tmp;
template<> B<int> A<int>::carray2[]={bobj};
template<> B<int>& A<int>::bobjr=bobj;;
template<> B<int>* A<int>::bobjp=0;
template<> A<int>::xxx A<int>::t1=0;
template<> A<int>::yyy A<int>::t2=bobj;

template<> int B<int>::*(A<int>::bip)=0;
template<> void  (B<int>::*(A<int>::bfp))()=0;

template<> char A<B<int > >::c='\0';
template<> unsigned char A<B<int > >::uc='\0';
template<> short A<B<int > >::s=0;
template<> unsigned short A<B<int > >::us=0;
template<> int A<B<int > >::i=0;
template<> unsigned int A<B<int > >::ui=0;
template<> float A<B<int > >::f=0;
template<> double A<B<int > >::d=0;
template<> long double A<B<int > >::ld=0;


template<> long double *A<B<int > >::ldp=0;
template<> long double &A<B<int > >::ldr=A<B<int> >::ld=0;
template<> unsigned short ** A<B<int > >::uspp=0;

template<> int A<B<int > >::iarray[3]={};
template<> B<B<int > > A<B<int > >::carray1[5]={};
template<> B<B<int > > A<B<int > >::carray2[]={bobj2};

template<> B<B<int > > A<B<int > >::bobj=bobj2;
template<> B<B<int > >& A<B<int > >::bobjr=bobj2;
template<> B<B<int > >* A<B<int > >::bobjp=0;
template<> A<B<int > >::xxx A<B<int > >::t1=0;
template<> A<B<int > >::yyy A<B<int > >::t2=bobj2;

template<> int B<B<int > >::*(A<B<int > >::bip)=0;
template<> void  (B<B<int > >::*(A<B<int > >::bfp))();


#include <stdio.h>
int main(){
unsigned short *usp;
A<int>::c = 'a';
A<int>::uc = 1;
A<int>::s = 2;
A<int>::us =3;
A<int>::i = 4;
A<int>::ui= 5;
A<int>::f=6.0;
A<int>::d = 7.0;
A<int>::ld = 8.0;


A<int>::ldp= &A<int>::ld ;
A<int>::ldr=A<int>::ld ;
A<int>::uspp = &(usp);

A<int>::iarray[2]=8;
A<int>::carray1[4]=bobj;
A<int>::carray2[0]=bobj;

A<int>::bobj =bobj;
A<int>::bobjr=bobj;
A<int>::bobjp=&bobj;
A<int>::t1=9;
A<int>::t2=bobj;

A<int>::bip=&B<int>::i;
A<int>::bfp = &B<int>::Bf;


A<B<int> >::c ='a';
A<B<int> >::uc =1;
A<B<int> >::s=2;
A<B<int> >::us=3;
A<B<int> >::i=4;
A<B<int> >::ui=5;
A<B<int> >::f=6.0;
A<B<int> >::d=7.0;
A<B<int> >::ld=8.0;


A<B<int> >::ldp=&A<B<int> >::ld;
A<B<int> >::ldr=A<B<int> >::ld;
A<B<int> >::uspp=&usp;

A<B<int> >::iarray[2]=8;
A<B<int> >::carray1[4]=bobj2;
A<B<int> >::carray2[0]=bobj2;

A<B<int> >::bobj =bobj2;
A<B<int> >::bobjr=bobj2;
A<B<int> >::bobjp=&bobj2;
A<B<int> >::t1=9;
A<B<int> >::t2=bobj2;

A<B<int> >::bip=&B<B<int> >::i;
A<int>::bfp = &B<int>::Bf;


 puts("ok"); 
}



