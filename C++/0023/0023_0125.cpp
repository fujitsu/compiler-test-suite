int a = 1;
int * p = &a;
int * fun[[nodiscard]]()
{
    return p;
};

int main()
{
    fun();
}
