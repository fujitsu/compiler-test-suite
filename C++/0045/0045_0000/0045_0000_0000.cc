extern void func_ext();
#include <stdio.h>
int main(){
  func_ext();
   try {
      throw (int)0;
   }
   catch ( int ){
   }

   puts("ok");
}
