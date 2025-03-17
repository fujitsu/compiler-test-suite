class A;
class B {
  A *p;
 public:
 A *func();
};  
class A{
  B *p;
 public:
 B *func();

};
class C;
class D {
 public:
 C func();
};
class C {
 D func();
};
class E;
class F{
 protected:
 typedef E II;
};
class E{
 public:
 typedef F II;
} ;
class G;
class H{
 private:
 friend class G;
};
class G{
 friend class H;
};
class I;
class J{
 public:
 I func();
 typedef I x;
};
class I{
 J func();
 typedef J x;
};
class K;
class L{
 typedef K xx;
 friend class  K;
};
class K{
 typedef L xx;
 friend class  L;
};
class M;
class N{
 M func();
 friend class M;
 typedef M xx;
};
class M{
 N func();
 friend class N;
 typedef N xx;
};
#include <stdio.h>
int main(){
  puts("ok");
}
