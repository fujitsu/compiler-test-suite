#define M(a, b, ...)  (a, b, __VA_ARGS__)

void test(){
    int n = M((void)1, (void)2, (void)3 ,4);                  
}

int main(){
    test();
} 

