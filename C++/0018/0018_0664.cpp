


#include <string>
#include <cassert>
#include <iostream>
int main() {
    typedef std::string S;
    S s;
    char s2[] = {'a', 'b', 'c'};

    try{
      s.assign(s2, s.max_size() + 1);
      assert(s == "abc");
    } catch(...){
      printf("ok\n");
    }
}
