#include <stdio.h>
void sub(unsigned int *uintp, short *shortp){
   *uintp = 10;
   *shortp = 5;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *shortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   short *shortp;
   unsigned int uintwork[5] = {1,2,3,4,5};
   uintp = uintwork;
   shortp = (short *)uintwork;

   sub(uintp,shortp);
}
