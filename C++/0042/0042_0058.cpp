struct alignas(16) X { char x; };
struct X;   
struct alignas(16) X; 
#if __GNUC__
struct alignas(8) alignas(16) X; 
#else
struct alignas(16) alignas(8) X; 
#endif

struct alignas(16) Y;
#if __GNUC__
struct alignas(8) alignas(16) Y { 
#else
struct alignas(16) alignas(8) Y { 
#endif
    char y;
};

void test() {

}

int main() {
    test();
}
