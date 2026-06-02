/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª  An lvalue does not designate an object when evaluated. 
*/

void test(){
    int* lv;
    int a;
    a = *lv;     //  gcc  :no warning, no error.
                 //  clang:no warning, no error.
}

int main(){
    test();
}
