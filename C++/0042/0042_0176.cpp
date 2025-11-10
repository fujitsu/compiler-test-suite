#include <iostream>


typedef int INT;
thread_local INT g_x;


thread_local int g_y;


static thread_local union {
    char x;
    int y;
};
namespace __NS__ {
    static thread_local union {
        char a;
        double  b;
    };
}

int main() {
    std::cout << "ok" << std::endl;
    return 0;
}
