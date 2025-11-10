extern void funcl2();
extern void funcl3();
#include <stdio.h>
int main(){
  funcl2();
   try {
      funcl3();
      throw (int)0;
   }
   catch ( int ){
   }

   puts("ok");
}
