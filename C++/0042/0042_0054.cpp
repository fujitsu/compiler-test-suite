void test() {
# if defined (__EDG_VERSION__) && __EDG_VERSION__ <= 410
    try {
        
    } catch (alignas(4) int e) { 
    
    }
#endif
}

int main() {
    test();
}
