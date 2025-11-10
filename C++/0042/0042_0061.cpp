[[carries_dependency]] int foo([[carries_dependency]] int a) {
    return []([[carries_dependency]] int x) { return x+1; }(a);
}

void test() {
    int x = 3;
    foo(foo(x));
}

int main() {
    test();
}
