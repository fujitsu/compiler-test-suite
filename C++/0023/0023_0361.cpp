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
        std::cout << ++i <<","<<(i = 5);
        std::string ret = os.str(); 
        assert(ret == "1,5");
    }
    std::cout.rdbuf(p);
}
