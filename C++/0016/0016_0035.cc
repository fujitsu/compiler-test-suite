






#include <stdio.h>
int main(){
 try {
   try {
     int i=0;
     i++;
   }
   catch(char) {}
   try {}
   catch(long) {}
 }
 catch(int) {}
 puts("ok");
}
