const int INTFIX3 =3;
const int INTFIX4 =4;

const int DOUBLEFIX5 =5;

enum { user =1, templ, templ2};

#include <stdio.h> 
#include <string.h>



template < class T, int z > 
class T1 {
  public:
  T *tp;
  T x[z];
};

T1<int,1> aobj;
T1<char,6> bobj;

int t1(){
  int j=INTFIX3,k=INTFIX4;
  aobj.tp =&j;
  aobj.x[0] = k;

  if (*(aobj.tp) != INTFIX3 ||  aobj.x[0] != INTFIX4){
    return 1;
  }

   bobj.x[0] = 'h';
   bobj.x[1] = 'e';
   bobj.x[2] = 'l';
   bobj.x[3] = 'l';
   bobj.x[4] = 'o';
   bobj.x[5] = '\n';
   bobj.tp = bobj.x;

   if (!strcmp( bobj.tp, "hello")){
     return 1;
   }
  return 0;
}



template < class T ,class S > 
int ft01(T a, S b) {
  T a1;
  S b1;
  a1 = a;
  return 3;
}

static int t2(){
 int a;
 char *b="hello";
 if(ft01(a,b) !=3 ){
   return 1;
 }
 return 0;
}




template < class T, class X ,int z > 
class T3 {
  public:
  int j;
  T *tp;
  X *x;
  T value;
  T & fi(int x){ T y; y = x+z;  value =y; return value; }
  X * fc(X* s){ value = value -1; return x;}
};


T3<int,char,5> t3obj;

int t3(){
  int x;
  char *cp;
  x = t3obj.fi(10);
  cp = t3obj.fc("hello");
  if (t3obj.value !=14){
    return 1;
  }
  return 0;
}



template < class T, class X ,int z > 
class T4 {
  public:
  int j;
  T *tp;
  X *i;
  T & fi(int x );
  T y;
};


template < class T, class X , int z >
T&  T4<T,X,z>::fi(int x){ this->y = x+z;  return this->y; }


T4<int,char,5> t4obj;

static int t4(){
  int x;
  char *cp;
  if (t4obj.fi(10) != 15){
    return 1;
  }
  return 0;
}


int t5num = 0;
template < class T, class X ,int z > 
class T5 {
  public:
  int j;
  T5(){ j=z; t5num++; }
 ~T5(){  t5num++; }
};


static int t5(){
  {

    T5<int,char,1> t5obj1;
    T5<int,char,2> t5obj2;
  }
  if (t5num !=4){
    return 1;
  }
 return 0;
}


template < class T > 
class T6 {
  private:
  T j;
  public:
  T jj;
  friend int n_t( T6<T>*p);
  friend T6<T>* xxf(T6<T>*);
  int p(){ return j; }
};


int n_t(T6<int>*ap){ ap->j=5; return ap->p();}
int n_t(T6<long int>*ap){ ap->j=6; return ap->p();}
T6<int> aobj2;

T6<int> *xxf(T6<int>*ap){
  ap->j = ap->j+2; aobj2.jj = ap->p(); 
  
  return &aobj2;
}

T6<long int > t6obj;

static int t6(){
   T6<int> t6obj2;
   if ( n_t(&t6obj2) !=5) {return 1 ;}
   if ( n_t(&t6obj) !=6 ) {return 1 ;}
   if ( (xxf(&t6obj2))->jj != 7 ) {return 1;}
  return 0;
}


template < class T > 
class T7 {
  public:
  static T s;
};

T7<int> t7iobj;
T7<float > t7fobj;

template<> int T7<int>::s =0;
template<> float T7<float>::s =0.0;
static int t7(){
 t7iobj.s  =5;
 t7fobj.s =6.0;

  if (  T7<int>::s != 5 ||   T7<float>::s != 6.0 ) return 1;

return 0;

}



template < class T > 
int ft8(T p){
  static T s;
  s = p;
  return s;
}


static int t8(){
 int a=5;
 long int b=6;
  if ( ft8(a)!=5 ||  ft8(b)!=6) return 1;
 return 0;
}





template < class T>
int ft9(T p){
 T a;
 a =p;
 return templ;
}

int ft9(int j){ return user;}

static int t9(){
 int a=1;

  
#if __EDG_VERSION__ >= 307 && !(!linux && __FCC_VERSION <= 590)
 if (ft9(a)!= templ) return 1;
#else
 if (ft9(a)!= user) return 1;
#endif
 if (ft9((short)2) != templ) return 1;
 return 0;
}



template < class T>
int ft10(T& p){
 T a;

 return templ;
}

 class T10{ public: int j; T10(){} T10(int i):j(i+2){} };

int ft10(T10&j){ return user; }

static int t10(){
 T10 t10obj(1);
  
#if __EDG_VERSION__ >= 307 && !(!linux && __FCC_VERSION <= 590)
 if (ft10(t10obj) != templ) return 1;
#else
 if (ft10(t10obj) != user) return 1;
#endif
 return 0;
}



template < class T>
int ft11(int i, T p){
 T a;
 a =p;
  return templ;
}

template < class T>
int ft11(T p, int i, int x){
 T a;
 a =p;
  return templ2;
}

int ft11(int i, int j){
  return user;
}

static int t11(){
  
#if __EDG_VERSION__ >= 307 && !(!linux && __FCC_VERSION <= 590)
  if (ft11(1,1)!= templ ) return 1;
#else
  if (ft11(1,1)!= user ) return 1;
#endif
  if (ft11(1,(short)1) != templ ) return 1;
 return 0;
}





template < class T, int z > 
class T12 {
  public:
  int i;
  T *tp;
  T x[z];
  T12(){ i = templ;}
};


template<> class T12<int,1> {
public:
  int i;
  T12(){ i = user;}
}; 

T12<int,1> t12iobj;
T12<char,6> t12cobj;

static int t12(){
  int j=3,k=4;

  if (t12iobj.i !=user || t12cobj.i != templ ) return 1;
  return 0;

}



template < class T> 
class T13 {
  public:
  T *tp;
  T13(){ 
    
    
    
    
    
#if defined (__cplusplus) && __cplusplus >= 201103L
    int i = templ;
#else
    i = templ;
#endif
  }
};

class T13B {
  public:
  T13B(){}
};

template<> class T13<int>: public T13B {
public:
  int i;
  T13(){ i = user;}
}; 


static int t13(){
 T13<int> t13obj;
 if (t13obj.i != user ) return 1;

 return 0;
}



template < class T, int z > 
class T14 {
  public:
  int i;
  T *tp;
  T x[z];
  T14(){ i = z; }
};

template<> class T14<int,1> : public T14<char,2> {
public:
  int i;
  T14(){ i = T14<char,2>::i+1;}
}; 


class T14B : public T14<short,3> {
  public:
  int i ;
  T14B(){i =user;}
};


T14<int,1> t14obj1;
T14<char,6> t14obj2;
T14B t14bobj; 
static int t14(){
  int j=3,k=4;
  if (t14obj1.i != 3) {printf("%d\n",t14obj1.i);return 1;}
  if (t14obj2.i != 6) {printf("%d\n",t14obj2.i);return 1;}
  if ( t14bobj.i != user ) return 1;
  return 0;
}


template < class T>
class T15{
public:
   int i ;
   T15(int):i(2){i++;}
   ~T15(){ i--;}
};

void ft15(T15<int>*p){
  p->T15<int>::~T15();
}

static int t15(){
  T15<int> t15obj(1);
  ft15(&t15obj);
  if ( t15obj.i != 2 ) return 1;
  return 0;
}



int ctor_flag =0;
int dtor_flag =0;
template < class T>
class T16{
public:
   T16(int i){ctor_flag++;}
   ~T16(){dtor_flag++;}
};

void ft16(T16<int>*p){
  p->T16<int>::~T16();
  T16<int>v = T16<int>(10);
}

static int t16(){
  T16<int> t16obj(1);
  ft16(&t16obj);
  if (ctor_flag !=2 || dtor_flag !=2 ) return 1;
  return 0;
}


template < class T,int x>
class T17{
public:
  int i;
  int j;
  T17(int p):i(p+x){}
  void ft17(){j=3;}
};


static int t17(){
int  T17<int,1> ::*t17pmi = & T17<int,1>::i;
void (T17<int,1>::*t17pmf)() = & T17<int,1>::ft17;

T17<int,1> t17obj(4);
(t17obj.*(void ( T17<int,1>::*)())t17pmf)();

if ( (t17obj.j != 3) 
  || ( t17obj.*(int T17<int,1>::*)t17pmi) != 5) return 1;
return 0;
}


template < class T,int x>
class T18{
public:
  int i;
  T18(int p):i(p+x){}
};

template <class T>
int func(T18<T,1>& r){ return r.i;}



template < class T,int x>
class T19{
public:
  int i;
  T19(int p):i(p+x){}
};

static int t19(){
  T19<int,1> *t19p= new T19<int,1>(2); 
  if ( t19p->i != 3) return 1;
return 0;
}


template < class T>
class T20{
public:
  int i;
  static T f(T20<T>*p);
};


template<> int T20<int>::f(T20<int>*p){ return p->i;}

static int t20(){
   T20<int> t20obj;
   t20obj.i =5;
   if ( T20<int>::f(&t20obj) != 5) return 1;
  return 0;
 }

 

template < class T, int i >
class T21{
public:
  int a;
  T21():a(1){}
};

class X : public T21<int,1> {
public:
  int xx;
  X(): T21<int,1>(),xx(2){ xx = xx+a;}

};


static int t21(){
 X xobj;
 if (xobj.xx != 3 ) return 1;
 return 0;
}



template < class T >
class T22{
public:
  int a;
  T f;
};


int t22fff() { return 1;}

static int t22(){
  T22< int (*)()> t22obj;
  t22obj.f = t22fff;

 if ( (*(t22obj.f))() != 1 ) return 1;
  
 return 0;
}



template < class T >
class T23{
public:
  int a;
  virtual T f(T) =0;
};

class D : public T23<int>{
  public:
  int f(int i){ return 10;}
};


static int t23(){
D dobj;
T23<int> *ap =  &dobj;
 if ( ap->f(1) != 10 ) return 1;
 return 0;
}



typedef int (*T24XX)();

template < T24XX j >
class T24{
public:
  int a;
  T24XX x;
  T24():x(j){}
};


int t24fff() { return 20;}


static int t24(){
  T24< &t24fff > t24obj;
  if (    (*(t24obj.x))() != 20 ) return 1;
 return 0;
}



template < class T >
class T25{
public:
  T aa;
};

static int t25(){

  if( sizeof(T25<char>) !=1
    || sizeof(T25<int>) != 4  
#if defined(_LP64) || defined(_I32LPx) || defined(__aarch64__) || defined(__x86_64__)
    || sizeof(T25<long>)  != 8
#else
    || sizeof(T25<long>)  != 4
#endif
#if __linux__ && !__aarch64__ && !__x86_64__ 
    || sizeof(T25<long double>) !=12
#else
    || sizeof(T25<long double>) !=16
#endif
    || sizeof(T25< T25<int> >) != 4) return 1;

 return 0;
}


template<class T>
class T26{
  public:
   T i;
 };

template<class T>
int f(T26<T> p){return 30; } 


static int t26(){
T26<int> t26obj;
 if ( f(t26obj) != 30) return 1;
 return 0;
}




template < class T>
class T27B;

template<class T>
class T27{
  int ii;
public:
  T27():ii(20) {}
  friend class T27B<T>;
};

template < class T>
class T27B {
public:
 int f(T27<T> *p) { return p->ii;   }
};


static int t27(){
 T27<int> t27obj;
 T27B<int> t27bobj;
 if ( t27bobj.f(&t27obj) != 20 ) return 1;
 return 0;
}




template < class T>
class T28B;

template<class T>
class T28{
  int ii;
public:
  T28B<T> * pp;
  T28():ii(20) {}
  friend class T28B<T>;
};

template < class T>
class T28B {
 T28<T> *pp;
public:
 int f(T28<T> *p) { return p->ii;   }
};


static int t28(){
 T28<int> t28obj;
 T28B<int> t28bobj;
 if ( t28bobj.f(&t28obj) != 20 ) return 1;
 return 0;
}


int main(){
  int flag=0;

  if (t1()) { printf("NG t1\n");flag=1;} 
  if (t2()) { printf("NG t2\n");flag=1;} 
  if (t3()) { printf("NG t3\n");flag=1;} 
  if (t4()) { printf("NG t4\n");flag=1;} 
  if (t5()) { printf("NG t5\n");flag=1;} 
  if (t6()) { printf("NG t6\n");flag=1;} 
  if (t7()) { printf("NG t7\n");flag=1;} 
  if (t8()) { printf("NG t8\n");flag=1;} 
  if (t9()) { printf("NG t9\n");flag=1;} 
  if (t10()) { printf("NG t10\n");flag=1;} 
  if (t11()) { printf("NG t11\n");flag=1;} 
  if (t12()) { printf("NG t12\n");flag=1;} 
  if (t13()) { printf("NG t13\n");flag=1;} 
  if (t14()) { printf("NG t14\n");flag=1;} 
  if (t15()) { printf("NG t15\n");flag=1;} 
  if (t16()) { printf("NG t16\n");flag=1;} 
  if (t17()) { printf("NG t17\n");flag=1;} 
  
  if (t19()) { printf("NG t19\n");flag=1;} 
  if (t20()) { printf("NG t20\n");flag=1;} 
  if (t21()) { printf("NG t21\n");flag=1;} 
  if (t22()) { printf("NG t22\n");flag=1;} 
  if (t23()) { printf("NG t23\n");flag=1;} 
  if (t24()) { printf("NG t24\n");flag=1;} 
  if (t25()) { printf("NG t25\n");flag=1;} 
  if (t26()) { printf("NG t26\n");flag=1;} 
  if (t27()) { printf("NG t27\n");flag=1;} 
  if (t28()) { printf("NG t28\n");flag=1;} 

  if (!flag){
    printf("ok\n");
  } else {
    printf("## NG ##\n");
  }
  return 0;
}
