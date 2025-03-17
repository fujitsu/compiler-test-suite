

#include <bitset>
int main()
{
    std::bitset<50> v;
    try{
      v.set(50);
    } catch(...){
      printf("ok\n");
    }
}
