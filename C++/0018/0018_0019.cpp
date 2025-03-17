




#include <bitset>
#include <cassert>
#include <algorithm> 

#include <stdio.h>

int main()
{
  try{
    std::bitset<1> v("xxx1010101010xxxx");
  } catch(...){
    printf("ok\n");
  }  
}
