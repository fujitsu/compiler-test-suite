

#include <string>
#include <iostream>

struct C
{
    std::string s;

    C(std::string str):s(str) {};
    ~C() {
        std::cout << "delete ";
        if (s.empty())
            std::cout << "empty string";
        else
            std::cout << s;
        std::cout << std::endl;
    }
};

typedef char* Exception;

void F(void)
{
    try {
        C c("test");
        Exception e = "exception";
        std::cout << "throw " << e << std::endl;
        throw e;
    } catch (Exception e) {
        std::cout << "catch " << e << std::endl;
        std::cout << "rethrow " << e << std::endl;
        throw; 
    }
}

int main(void)
{
    try {
        F();
    } catch (Exception e) {
        std::cout << "catch " << e << std::endl;
    }
    return 0;
}
