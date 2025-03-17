





#include <stdio.h>

class II {
    private:
        int x;
    public:
        II(int i) { x = i; }
        operator int() { return x*2; }
};

struct III {
    private:
        int x;
    public:
        III(int i) { x = i; }
        operator int() { return x*3; }
};
int main()
{
    II obj2 = II(10);
    III obj3(2);

    int i = int(obj2);
    int j = (int)obj3;

    i += obj2;
    obj3 ? j++ : i++;

    if( obj2 == 20 && obj3 == 6 && i == 40 && j == 7 )
        printf("ok\n");
    else
        printf("ng\n");
}
