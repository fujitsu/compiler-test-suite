

#include <bitset>
#include <cassert>


int main()
{
    std::string str("xxx1010101010xxxx");
    try{
      std::bitset<1> v(str, str.size()+1, 10);
    } catch(...){
      printf("ok\n");
    }
}
