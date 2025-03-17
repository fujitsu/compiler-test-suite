





#include <thread>
#include <new>
#include <cstdlib>
#include <cassert>

class G
{
    int alive_;
public:
    static int n_alive;
    static bool op_run;

    G() : alive_(1) {++n_alive;}
    G(const G& g) : alive_(g.alive_) {++n_alive;}
    ~G() {alive_ = 0; --n_alive;}

    void operator()()
    {
        assert(alive_ == 1);
        assert(n_alive >= 1);
        op_run = true;
    }
};

int G::n_alive = 0;
bool G::op_run = false;

int main()
{
    {
        G g;
        std::thread t0(g);
        std::thread::id id0 = t0.get_id();
        static_assert(noexcept(t0.get_id()),"");
        std::thread t1;
        std::thread::id id1 = t1.get_id();
        static_assert(noexcept(swap(t0, t1)),"");
        swap(t0,t1);
        assert(t0.get_id() == id1);
        assert(t1.get_id() == id0);
        t1.join();
    }
}
