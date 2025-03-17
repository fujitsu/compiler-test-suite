


#include <random>
#include <cassert>
#include <system_error>

int main()
{
    {
        std::random_device r;
        std::random_device::result_type e = r();
    }

}
