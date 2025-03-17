










#include <thread>
#include <cassert>

int main()
{
    std::thread::id id0;
    std::thread::id id1;
    std::thread::id id2 = std::this_thread::get_id();
    static_assert(noexcept(id0 <  id1),"");
    static_assert(noexcept(id0 <=  id1),"");
    static_assert(noexcept(id0 >  id1),"");
    static_assert(noexcept(id0 >=  id1),"");
    static_assert(noexcept(id0 ==  id1),"");
    static_assert(noexcept(id0 !=  id1),"");
    assert(!(id0 <  id1));
    assert( (id0 <= id1));
    assert(!(id0 >  id1));
    assert( (id0 >= id1));
    assert(!(id0 == id2));
    if (id0 < id2) {
      assert( (id0 <= id2));
      assert(!(id0 >  id2));
      assert(!(id0 >= id2));
    } else {
      assert(!(id0 <= id2));
      assert( (id0 >  id2));
      assert( (id0 >= id2));
    }
}
