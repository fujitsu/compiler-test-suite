













int i=0;
#include <stdio.h>
int main(){
 try {
   throw 10;
 }
 catch(int){
   i++;
 }
 puts("ok");
}
