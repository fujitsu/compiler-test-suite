#include <cassert>

class [[nodiscard]] error_info 
{ 
    public:
       const int mem; 
};

int main()
{
    error_info e{10};
    assert(e.mem==10);
}
