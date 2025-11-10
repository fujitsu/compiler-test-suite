

struct A {
  int m;
};

struct B {
  struct A a;
};

template<class T>
struct C {
  T t;
};

template<class T1, class T2>
struct D {
  T1 t1;
  C<T2> t2;
};

int main()
{
  A aa;
  int s1 = sizeof(aa);   
  int s2 = sizeof(aa.m); 

  B bb;
  int s3 = sizeof(bb);   
  int s4 = sizeof(bb.a); 


  int s5 = sizeof(A::m); 
  int s6 = sizeof(B::a); 
  int s7 = sizeof(C<int>::t); 
  int s8 = sizeof(D<int,double>::t1); 
  int s9 = sizeof(D<char,long>::t2);  

  decltype(aa) declAA;
  int sA = sizeof(declAA); 
}
