











void func(){
 int i=0;
 i++;
 if (i!=1){
   try {
     try {
     }
     catch(char) {}
   }
   catch(long) {}
 }
 try {
   throw(int)0;
 }
 catch(double) {}
}
#include <stdio.h>
int main(){
 try {
   try {
     int k=0;
     k++;
   }
   catch(short) {}
   try {
   }
   catch(char *) {}
   func();
 }
 catch(int) {}
 puts("ok");
}
