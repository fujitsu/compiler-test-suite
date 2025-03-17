#include <iostream> 
using namespace std;



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
   cout << "very Good!" << endl;
   return i;
 }
};
TESTA obja;
TESTB objb;
int main(){
TESTA objaa;
 obja.func();
 objb.func();
}
