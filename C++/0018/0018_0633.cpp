






#include <regex>
#include <cassert>

int main()
{
    std::regex r2;

    try{
      r2 = std::string("{");
    } catch(...){
      printf("ok\n");
    }
}
