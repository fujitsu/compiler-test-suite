#define VAR1(n1, n2, ...) (n1, n2, __VA_ARGS__)        
#define VAR2(...) (__VA_ARGS__)                        

void test(){
    int m = VAR1((void)1, (void)2, (void)3, (void)4, 5) ;     
      
    int l = VAR2(1);
    int n = VAR2((void)1, (void)2, 3);
}

int main(){
    test();
}