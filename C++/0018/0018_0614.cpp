





#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    try{
      r2.assign("{", 9, std::regex::extended);
      assert(r2.flags() == std::regex::extended);
      assert(r2.mark_count() == 2);
    } catch(...){
      printf("ok\n");
    }

}
