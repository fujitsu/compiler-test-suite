class A;
class B {
  A *p;
 public:
 A *func();
};  
class C;
class D {
 public:
 C func();
};
class C {};
class E;
class F{
 protected:
 typedef E II;
};
class E{} ;
class G;
class H{
 private:
 friend class G;
};
class G{};
class I;
class J{
 public:
 I func();
 typedef I x;
};
class I{};
class K;
class L{
 typedef K xx;
 friend class  K;
};
class K{};
class M;
class N{
 M func();
 friend class M;
 typedef M xx;
};
class M{};
#include <stdio.h>
int main(){
  puts("ok");
}
