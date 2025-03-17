#include <iostream>
#include <map>
#include <cassert>

std::map<std::string, int> get_map()
{
    return {{ "hello", 1 }};
}

int main()
{
    for (auto&& [ k, v ] : get_map())
     {
      assert(k == "hello"&&v == 1);
     }
    return 0;
}
