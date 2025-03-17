

#include <exception>
#include <cassert>

int main() {
    {
        try{
            throw std::nested_exception();
        }
        catch(std::nested_exception& e){
            assert(e.nested_ptr() == nullptr);
        }
    }

    {
        try {
            throw 42;
        }
        catch(...) {
            try{
                throw std::nested_exception();
            }
            catch(std::nested_exception& e)
            {
                try {
                    std::rethrow_exception(e.nested_ptr());
                }
                catch(const int& i){
                    assert(i == 42);
                }
            }
        }
    }
}
