void g(){}
void h(){}
void i(){}

void f(int n)
{
    switch (n)
    {
        case 0:
        case 1:
        case 2:
            g();
            [[unknow_attri]][[unknow_attri]][[unknow_attri,unknow_attri]];
        case 3:  
            h();
            [[using C:unknow_attri]][[using C:unknow_attri,not_std]];
        default:i();
    }
}

int main()
{
    f(0);
}
