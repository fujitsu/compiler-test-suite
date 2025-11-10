



#include <iostream>
using namespace std;



void funca();
class TESTA {
 public:
 virtual int  func(){
   int i=0;
   i++;
   cout << "Good!" << endl;
   return i;
 }
};
class TESTB {
 public:
 virtual int  func(){
   int i=0;
   i++;
   cout << "prety Good!" << endl;
   return i;
 }
};
TESTA obj;
TESTB bobj;
int main(){
 funca();
 obj.func();
}
