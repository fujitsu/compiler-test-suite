/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª An attempt is made to modify an object defined with a const-qualified type through
    use of an lvalue with non-const-qualified type
*/

void test(){
    const char ch = 'a';  
    char* p = (char*)&ch;
    *p = 'b';             //  gcc  :  no warning,no error.
                          //  clang:  no warning,no error.
}

int main(){
    test();
}


