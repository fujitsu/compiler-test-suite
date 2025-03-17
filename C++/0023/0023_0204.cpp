extern int x;

int f() {
    if constexpr (true)
        return 0;
    else if (x)
        return x;
    else
        return -x;
}

int main()
{
    f();
}
