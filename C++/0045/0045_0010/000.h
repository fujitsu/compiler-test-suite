



#include <iostream>
using namespace std;



class TESTC {
 public:
 virtual int  cfunc(){
   int i=0;
   i++;
   cout << "wonderful!" << endl;
   return i;
 }
 TESTC(){cout << "TESTC\n";} 
};
static TESTC cobj;
void funcb();
void funca(){
 cobj.cfunc();
 funcb();
}
