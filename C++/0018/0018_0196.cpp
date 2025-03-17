



#include <ios>
#include <streambuf>
#include <cassert>

struct testbuf
    : public std::streambuf
{
};

struct testios
    : public std::ios
{
    testios(std::streambuf* p) : std::ios(p) {}
    void set_rdbuf(std::streambuf* x) {std::ios::set_rdbuf(x);}
};

int main()
{
    testbuf sb1;
    testios ios1(&sb1);
    ios1.set_rdbuf(nullptr);
    return 0;
}

