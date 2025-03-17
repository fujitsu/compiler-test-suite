#include <iostream> 
using namespace std;

namespace NS {
    class T { };
    void f(T) { cout << "ok" << endl; }
}
NS::T parm;
int main() {
    f(parm);                    
}

