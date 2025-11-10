




#include <fstream>
#include <cassert>

int main()
{
    {
        std::ifstream fso("000.dat");
        std::ifstream fs;
        fs = move(fso);
        double x = 0;
        fs >> x;
        assert(x == 3.25);
    }
    {
        std::wifstream fso("000.dat");
        std::wifstream fs;
        fs = move(fso);
        double x = 0;
        fs >> x;
        assert(x == 3.25);
    }
}
