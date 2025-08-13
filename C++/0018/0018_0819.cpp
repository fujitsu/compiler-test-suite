




#include <fstream>
#include <cassert>

int main()
{
    {
        std::ifstream fs1("001.dat");
        std::ifstream fs2("002.dat");
        fs1.swap(fs2);
        double x = 0;
        fs1 >> x;
        assert(x == 4.5);
        fs2 >> x;
        assert(x == 3.25);
    }
    {
        std::wifstream fs1("001.dat");
        std::wifstream fs2("002.dat");
        fs1.swap(fs2);
        double x = 0;
        fs1 >> x;
        assert(x == 4.5);
        fs2 >> x;
        assert(x == 3.25);
    }
}
