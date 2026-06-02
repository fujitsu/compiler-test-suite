static int st=0;
#include <stdio.h>
template <class T> void funcx(T a){
  T x;
  st ++;
  x=a;
  st =st+x-x;
};
#include "031.h"
#include "032.h"  
#include "034.h"  
#include "035.h"  
GD obj;
int main(){
 funca(10);  
 funcx(10);  
 funcb();    
 funcc();    
 obj.funcd(); 
 if (st == 5 )
  printf("ok\n");
}
