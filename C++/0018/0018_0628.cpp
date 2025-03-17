





#include <regex>
#include <cassert>

int main()
{
  try{
    std::regex r1(std::move("{"));
    std::regex r2;
    r2 = r1;
  } catch(...){
    printf("ok\n");
  }
}
