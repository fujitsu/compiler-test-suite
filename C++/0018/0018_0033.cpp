

#include <bitset>
#include <cassert>

int main()
{
    std::bitset<50> v;
    v.set();
    try{
      v.reset(50);
    } catch(...){
      printf("ok\n");
    }
}
