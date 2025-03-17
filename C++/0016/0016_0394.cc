template<class T>  class A;
template<class T>  class B {
  A<int> *p;
 public:
 A<int> *func();
};  
template<class T>  class A{
  B<char> *p;
 public:
 B<char> *func();

};
A<int> aobj;
B<char> bobj;
template<class T>  class C;
template<class T> class D {
 public:
 C<int> func();
};
template<class T> class C {
 D<char> func();
};
C<int> cobj;
D<char> dobj;
template<class T> class E;
template<class T> class F{
 protected:
 typedef E<float> II;
};
template<class T> class E{
 public:
 typedef F<double> II;
} ;
E<float> eobj;
F<double> fobj; 
template<class T> class G;
template<class T> class H{
 private:
 friend class G<int>;
};
template<class T> class G{
 friend class H<char>;
};
G<int> gobj;
H<char> hobj;
template<class T> class I;
template<class T> class J{
 public:
 I<T> func();
 typedef I<T> x;
};
template<class T> class I{
 J<T> func();
 typedef J<T> x;
};
I<short> iobj;
J<short> jobj;
template<class T> class K;
template<class T> class L{
 typedef K<T> xx;
 friend class  K<T>;
};
template<class T> class K{
 typedef L<T> xx;
 friend class  L<T>;
};
K<int> kobj;
L<int> lobj;
template<class T> class M;
template<class T> class N{
 M<T> func();
 friend class M<T>;
 typedef M<T> xx;
};
template<class T> class M{
 N<T> func();
 friend class N<T>;
 typedef N<T> xx;
};
M<long long int> mobj;
N<long long int> nobj;
#include <stdio.h>
int main(){
  puts("ok");
}
