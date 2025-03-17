struct S{

void (*q)()noexcept{};
void (*p)(){};
void fun()
{
    p = q;
}
};
int main()
{
    S s;
    s.fun();

}
