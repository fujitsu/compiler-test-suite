



#include <memory>

int main()
{
    char* p = new char[10];
    std::declare_no_pointers(p, 10);
    std::declare_no_pointers(nullptr, 10);
    delete [] p;
}
