







#include <memory>
#include <sstream>
#include <cassert>

int main()
{
    std::shared_ptr<int> p(new int(3));
    std::ostringstream os;
    assert(os.str().empty());
    os << p;
    assert(!os.str().empty());
}
