
template <class T > class A {
 public:
  T a;
  void func(T){}
  template <class T2> class C {};
  template <class T3> void func2(T3 x){
  }
};
class AA {
 public:
  template <class T3> void Tfunc(T3 x){
  }
  void ff(){Tfunc(10);}
};
class D {
 protected:
 int aa;
 void func(int){}
 class DD {
   void func2(char){}
 };
}; 
class B: private A<int> , private AA, private D{
 public:
#if __aarch64__ || __x86_64__
  using A<int>::C;     
#else
  A<int>::C<char>; 
#endif
  using A<int>::func;
  using A<int>::func2;  
  using AA::Tfunc;      
 protected:
  using D::aa;
  using D::func;
  using D::DD;
}x;

#include <stdio.h>
int main(){
A<int> obj;
 obj.func2(10);
 x.Tfunc(10);
 puts("ok");
}
