#define FUN() if constexpr(true){if(const int a = 1;a == 1){if(a == 1){}}else if constexpr(a > 1){}}

int main()
{
    FUN();
}
