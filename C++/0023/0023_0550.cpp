#include <iostream>
#include <map>
#include <cassert>

std::map<bool, double> get_map()
{
    return {{ true, 4.3 }};
}

int main()
{
    for (auto [ k, v ] : get_map())
    assert(k == true&&v == 4.3);
    return 0;
}