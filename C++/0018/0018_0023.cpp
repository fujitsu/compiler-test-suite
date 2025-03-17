

#include <bitset>
#include <cassert>

int main()
{
    std::string str("xxxbababababaxxxx");
    try{
      std::bitset<1> v(str, 2, 10, 'a', 'b');
    } catch(...){
      printf("ok\n");
    }
}
