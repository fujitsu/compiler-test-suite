



#include <condition_variable>
#include <cassert>

int main()
{
    assert(static_cast<int>(std::cv_status::no_timeout) == 0);
    assert(static_cast<int>(std::cv_status::timeout)    == 1);
}
