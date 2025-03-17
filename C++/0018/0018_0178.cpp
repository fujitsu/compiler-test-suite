







#include <future>
template <class T>
class test_allocator
{
};


int main()
{
    static_assert((std::uses_allocator<std::packaged_task<double(int, char)>, test_allocator<int> >::value), "");
}
