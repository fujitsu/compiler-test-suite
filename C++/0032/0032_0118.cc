#include <stdio.h>
int ctor_count=0;
class X {
 public:
 int i;
 X(){ctor_count++;}
 class XX {
 public:
 int i;
 XX(){ctor_count++;}
 };
};

template <class T>
class A{
 public:
 int i;
 A(){ctor_count++;}
};

template <class T>
class B {
 public:
 int i;
 class Y {
 public:  
  int i;
  Y(){ctor_count++;}
 };
 B(){ctor_count++;}
};


template <class T>
class C: public T, public T::XX , public A<T>, public B<T>, public B<T>::Y  {
 public:
 C(){ctor_count++;}
};

C<X> cobj;


int main(){
 if (ctor_count==6) { printf("ok\n");} else {printf("ng %d\n",ctor_count);}
}
