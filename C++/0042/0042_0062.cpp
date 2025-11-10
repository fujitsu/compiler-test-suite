[[carries_dependency]] int foo(int a, [[carries_dependency]] int b);
int foo(int a, [[carries_dependency]] int b); 
[[carries_dependency]] int foo(int a, int b); 
int foo(int a, int b); 

void test() {

}

int main() {
    test();
}
