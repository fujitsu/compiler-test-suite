
typedef unsigned char uchar;
typedef unsigned char uchar; 
typedef unsigned char uchar; 
uchar uc;

void test() {
    
    typedef unsigned char uchar;
    typedef unsigned char uchar; 
    typedef unsigned char uchar; 
    uchar uc;
    
    {
        
        typedef unsigned char uchar;
        typedef unsigned char uchar; 
        typedef unsigned char uchar; 
        uchar uc;
    }
}

int main() {
    test();
}
