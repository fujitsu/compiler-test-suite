#include <iostream> 
using namespace std;


class A {
 public:
void a_func(){}
class A_N{
 public:
  void a_n_func(){}
   class A_NN{
   public:
     void a_nn_func(){}
     class A_NNN{
       public:
        void a_nnn_func(){}
     }annn_obj;
   }ann_obj;
 }an_obj;
}aobj;
struct B{
 void b_func(){}
 struct  B_N{
  void b_n_func(){}
   struct B_NN{
     void b_nn_func(){}
     struct B_NNN{
        void b_nnn_func(){}
      }bnnn_obj;
   }bnn_obj;
}bn_obj;
}bobj;
namespace C {
 void c_func(){}
 namespace C_N {
   void c_n_func(){}
   namespace C_NN {
     void c_nn_func(){}
     namespace C_NNN{
        void c_nnn_func(){}
     }
   }
 }
}
using namespace C;
using namespace C_N;
using namespace C_NN;
using namespace C_NNN;

namespace  D {
 void d_func(){} 
 class D_N {
 public:
   void d_n_func(){} 
   struct D_NN{
     void d_nn_func(){} 
   }dnn;
 }dn;
}
using namespace D;

int main(){
 aobj.a_func();
 aobj.an_obj.a_n_func();
 aobj.an_obj.ann_obj.a_nn_func();
 aobj.an_obj.ann_obj.annn_obj.a_nnn_func();
 bobj.b_func();
 bobj.bn_obj.b_n_func();
 bobj.bn_obj.bnn_obj.b_nn_func();
 bobj.bn_obj.bnn_obj.bnnn_obj.b_nnn_func();
 c_func();
 c_n_func();
 c_nn_func();
 c_nnn_func();
 d_func();
 dn.d_n_func();
 dn.dnn.d_nn_func();

  cout << "END\n";
}
