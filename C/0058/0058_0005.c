

#include <stdlib.h>
#include <assert.h>

#include <stdio.h>

#define EXIT_TEST(name, num)  void name ## num()  { assert(x == num); --x; }

int x = 32;

EXIT_TEST(func, 1)
EXIT_TEST(func, 2)
EXIT_TEST(func, 3)
EXIT_TEST(func, 4)
EXIT_TEST(func, 5)
EXIT_TEST(func, 6)
EXIT_TEST(func, 7)
EXIT_TEST(func, 8)
EXIT_TEST(func, 9)
EXIT_TEST(func, 10)
EXIT_TEST(func, 11)
EXIT_TEST(func, 12)
EXIT_TEST(func, 13)
EXIT_TEST(func, 14)
EXIT_TEST(func, 15)
EXIT_TEST(func, 16)
EXIT_TEST(func, 17)
EXIT_TEST(func, 18)
EXIT_TEST(func, 19)
EXIT_TEST(func, 20)
EXIT_TEST(func, 21)
EXIT_TEST(func, 22)
EXIT_TEST(func, 23)
EXIT_TEST(func, 24)
EXIT_TEST(func, 25)
EXIT_TEST(func, 26)
EXIT_TEST(func, 27)
EXIT_TEST(func, 28)
EXIT_TEST(func, 29)
EXIT_TEST(func, 30)
EXIT_TEST(func, 31)
EXIT_TEST(func, 32)
 

void test() {
    at_quick_exit(func1) ;
    at_quick_exit(func2) ;
    at_quick_exit(func3) ;
    at_quick_exit(func4) ;
    at_quick_exit(func5) ;
    at_quick_exit(func6) ;
    at_quick_exit(func7) ;
    at_quick_exit(func8) ;
    at_quick_exit(func9) ;
    at_quick_exit(func10);
    at_quick_exit(func11);
    at_quick_exit(func12);
    at_quick_exit(func13);
    at_quick_exit(func14);
    at_quick_exit(func15);
    at_quick_exit(func16);
    at_quick_exit(func17);
    at_quick_exit(func18);
    at_quick_exit(func19);
    at_quick_exit(func20);
    at_quick_exit(func21);
    at_quick_exit(func22);
    at_quick_exit(func23);
    at_quick_exit(func24);
    at_quick_exit(func25);
    at_quick_exit(func26);
    at_quick_exit(func27);
    at_quick_exit(func28);
    at_quick_exit(func29);
    at_quick_exit(func30);
    at_quick_exit(func31);
    at_quick_exit(func32);
    quick_exit(x - 32);

}
int main(int argc, char **argv) {
    test();
    return 0;
}