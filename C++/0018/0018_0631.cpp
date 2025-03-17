





#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    
    try{
      r2 = {'{', 'a', '(', '[', 'b', 'c', ']', ')', ')'};
    } catch(...){
      printf("ok\n");
    }
}
