#include <regex>
#include <cassert>

int main()
{
  try{
    std::regex r1("\\");
  } catch(...){
    printf("ok\n");
  }
}

