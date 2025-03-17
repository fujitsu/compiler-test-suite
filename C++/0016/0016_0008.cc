void f(int i) {
  void x();	
  struct S {								    
    friend void x();            
  };									    
  							    
  if (i) {								    
    i++;
    extern void y();
    struct SS {							    
      friend void y();          
    };								    
  }									    
  extern void z();							    
  struct SSS {							    

  };				        				    
}									    
#include <stdio.h>
int main(){
 f(10);
 puts("ok");
 return 0;
}
