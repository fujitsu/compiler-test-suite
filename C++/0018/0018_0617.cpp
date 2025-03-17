







#include <regex>
#include <cassert>

int main()
{
    std::regex r2;

    try{
      r2.assign({'{', 'a', '(', '[', 'b', 'c', ']', ')', ')'});
    } catch(...){
      printf("ok\n");
    }

    try{
      r2.assign({'(', 'a', '(', '[', 'b', 'c', ']', ')', ')'}, std::regex::extended);
    } catch(...){
      printf("ng\n");
    }
}
