#include <iostream>
#include <sstream>
#include <string>
#include <cassert>

int main () 
{   
    std::ostringstream os;
    std::streambuf* p = std::cout.rdbuf(os.rdbuf());
    {
        int i = 0;
        std::cout << (i = 3) <<","<<i;
        std::string ret = os.str(); 
        assert(ret == "3,3");
    }
    std::cout.rdbuf(p);
}
