


#include <iterator>
#include <sstream>
#include <cassert>
#include <iostream>
int main()
{
    std::istringstream inf("123");
    std::istream_iterator<int> i(inf);
    int j = 0;
    j = *i;
    assert(j == 123);
    ++i;
    j = *i;
    assert(j == 123);
}
