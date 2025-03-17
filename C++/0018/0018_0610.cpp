





#include <regex>
#include <cassert>

int main()
{
    try{
      std::regex r1(" { ");
      std::regex r2;
      r2.assign(r1);
    } catch(...){
      printf("ok\n");
    }
}
