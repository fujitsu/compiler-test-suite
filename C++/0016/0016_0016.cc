


#include <stdio.h>
int main(){
 try {
   int a=0;
   throw (short)a;
 }
 catch(short) {
 }
 puts("ok");
}
