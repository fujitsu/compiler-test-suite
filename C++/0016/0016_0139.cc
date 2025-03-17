#include <iostream> 
using namespace std;
int i=0;
void func(){}
class A {
 public:
  A(){
   i++;
  }
  ~A(){
   i--;
    }
  class A_N{
   public:
    A_N(){
     i++;
    }
    ~A_N(){
     i--;
    }
    class A_NN{
     public:
      A_NN(){   i++;
     }
      ~A_NN(){   i--;
       }
    }annobj;
  }anobj;
};


struct B_N{
    void b_n_func(){
     
      }
}bnobj;
struct B {
  struct B_N{
    void b_n_func(){
     
    }
  }bnobj;
  void b_func(){
   i++; 
  }
}bobj;

int main(){
func();
A aobj;
bobj.b_func();
bnobj.b_n_func();
bobj.bnobj.b_n_func();
 cout << "END\n";
}

