




#include <stdio.h>
int c_count=0;
int d_count=0;
template <class T>
class A {
 public:
  A(){ };
  A(int i){ c_count++;};
  ~A(){ d_count++;};
};

template <class T>
class B:public A<T> {
 public:
  B():A<T>(1){ c_count++;}
  ~B(){ d_count++;};
};


int main(){
  {
    B<char> cobj,cobj2;
  } 
  if(c_count == 4
   &&d_count == 4){} else { printf("ng1 c_count =%d,d_count=%d,\n",c_count, d_count);}
  {
    B<int> cobj[10];
  } 
  if(c_count == 24
   &&d_count == 24){ printf("ok\n");} else { printf("ng2\n");}

}




