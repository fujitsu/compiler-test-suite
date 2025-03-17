






#include <thread>
#include <cassert>

int main()
{
    std::thread::id id1;
    std::thread::id id2 = std::this_thread::get_id();
    typedef std::hash<std::thread::id> H;
    static_assert((std::is_same<typename H::argument_type, std::thread::id>::value), "" );
    static_assert((std::is_same<typename H::result_type, std::size_t>::value), "" );
    H h;
    assert(h(id1) != h(id2));
}
