#include <iostream>
#include <tuple>
#include <cassert>

int main()
{
    auto tuple = std::make_tuple(1, 'a', 2.3);
    auto& [ i, c, d ] = tuple;
    i = 2;
    assert(std::get<0>(tuple) == 2);
    return 0;
}

