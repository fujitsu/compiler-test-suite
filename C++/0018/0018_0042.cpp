



#include <bitset>
#include <sstream>
#include <cassert>

int main()
{
    std::ostringstream os;
    std::bitset<8> b(0x5A);
    os << b;
    assert(os.str() == "01011010");
}
