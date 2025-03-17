

extern "C" void printf(char*,...);

union C {
    public:
        int c1,c2;
        C(int i, int j) { c1 = i; c2 = j; }
};
int main()
{
    C cobj3 = C(9,0);
    if (cobj3.c1 == cobj3.c2 && cobj3.c2==0)
     printf("ok\n");
    else
     printf("ng\n");
}


