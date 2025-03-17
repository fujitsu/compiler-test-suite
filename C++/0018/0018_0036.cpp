

#include <bitset>
int main()
{
    std::bitset<50> v;

    try{
      v.set(50,false);
    } catch(...){
      printf("ok\n");
    }
}
