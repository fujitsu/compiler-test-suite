

#include <stdio.h>
int cond=0;
int main(){
  try{
    switch (cond){
     case 0:
       throw (signed int)0;
     case 1:
       throw (unsigned int)0;
     case 2:
       throw (int)0;
     case 3:
       throw (signed)0;
     case 4:
       throw (unsigned)0;
     default:
       break;
     }
  }
  catch (...){}
  puts("ok");
}
