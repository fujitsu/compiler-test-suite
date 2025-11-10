



#include <iostream> 
using namespace std;



class TESTD {
 public:
 virtual int  dfunc(){
   int i=0;
   i++;
   cout << "Excelent!" << endl;
   return i;
 }
};
class TESTE {
 public:
 virtual int  dfunc(){
   int i=0;
   i++;
   cout << "marvelous!" << endl;
   return i;
 }
 TESTE(){
   dfunc();
 }
};
static TESTD cobj;
TESTE eobj;
void funcb(){
 TESTD cobj;
 TESTE eobj;
}
