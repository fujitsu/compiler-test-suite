
#include <stdio.h>
const int     INTFIXVAL =5;
const double DOUBLEFIXVAL =5.0;


template < class T , int i>
class T1;

template <class T2, int ii>
class T1{ 
public:
   T2 t1;
   T1():t1(ii){}
};


T1<int, INTFIXVAL> t1obj;

static int t1(){
  if ( t1obj.t1 != INTFIXVAL ){
    return 1;
  }
  return 0;
}


template < class S , const volatile int i>
class T2;

template <class S2, int ii>
class T2{ 
public:
   S2 t2;
   T2():t2(ii){}
};



T2<int, INTFIXVAL> t2obj;

static int t2(){
  if ( t2obj.t2 != INTFIXVAL ){
    return 1;
  }
  return 0;
}


template < class S , const volatile int i>
class T3;

template <class S2, int ii>
class T3{ 
public:
   S2 t3;
   T3():t3(ii){}
};

template < class S , volatile int i>
class T3;


T3<int, INTFIXVAL> t3obj;

static int t3(){
  if ( t3obj.t3 != INTFIXVAL ){
    return 1;
  }
  return 0;
}


template < class T >
T f1(T i);
template < class T >
T f1(T i);
template < class T >
T f1(T i){return i;}

template < class T >
T f1(T i);
template < class T >
T f1(T i);

static int tf1(){
  if ( f1(INTFIXVAL) != INTFIXVAL ){
    return 1;
  }
  return 0;
}


template < class T >
T f2(const T i);

template < class T >
T f2(const  T i){return i;}

template < class T >
T f2(const T i);

static int tf2(){
  if ( f2(INTFIXVAL) != INTFIXVAL ){
    return 1;
  }
  return 0;
}


int tf3i=5;
int *tf3ip = &tf3i;

const int tf3ci =3;
const int *tf3cip = &tf3ci;


template < class T >
int f3(T * i);

template < class T >
int f3( T *i){return 0;}


static int tf3(){
    f3(tf3ip);    
    f3(tf3cip);   

  return 0;
}






int main(){

  if (t1()) { printf("NG t1\n");} 
  if (t2()) { printf("NG t2\n");} 
  if (t3()) { printf("NG t3\n");} 

  if (tf1()) { printf("NG tf1\n");} 
  if (tf2()) { printf("NG tf2\n");} 
  if (tf3()) { printf("NG tf3\n");} 

  printf("ok\n");
}
