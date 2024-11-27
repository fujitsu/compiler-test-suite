
typedef void (function_type)();

int test() {
    return _Alignof(function_type); 
                                    
}

int main() {
    test();
}
