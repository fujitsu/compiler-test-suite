
#include <iostream> 
using namespace std;

int main(){
 class A { public: int x;}obj;
 try {
    int a;
    a=0;
    throw (a);
  }
 catch (char){
    cout << "NG" << endl;
}
 catch (int){ 
    cout << "ok" << endl;
  }
 try {
   int x=0;
   obj.x=x;
   if( x==0)
     throw obj;
 }
 catch (int){
    cout << "NG" << endl;
 }
 catch(A){
    cout << "ok" << endl;
 }
 catch (char){
    cout << "NG" << endl;
 }
}
   


