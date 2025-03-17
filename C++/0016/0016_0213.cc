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
TESTA obj;
int main(){
 obj.func();
}
