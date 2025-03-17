 int i=0; 
void func1(){
 try {
   i++;
  }
 catch (int){i++;} 
 catch (...){i++;}
}
class A {};
void func2(){
 try {
  i++;
 }
 catch(char){ i++;} 
 catch(unsigned short *){i++;} 
 catch (unsigned int &){i++;} 
 catch (long int ****){i++;} 
 catch (A*){i++;} 
 catch (int (&)[20]){i++;} 
 catch (A****){i++;}  
 catch (A){i++;}  
}
A A::*memp;  

#include <stdio.h>
int main(){
 func1();
 func2();

 puts("ok");
}
