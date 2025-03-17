



#include <bitset>
#include <sstream>
#include <cassert>
using namespace std;

void test01()
{

  bitset<5>      b5;
  stringstream   ss;
  ss.str("*");
  ss >> b5;
  assert( ss.rdstate() == ios_base::failbit );

}

int main()
{
    test01();
    std::istringstream in("01011010");
    std::bitset<8> b;
    in >> b;
    assert(b.to_ulong() == 0x5A);
}
