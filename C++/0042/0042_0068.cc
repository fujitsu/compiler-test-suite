

int main()
{
  alignas(float) extern unsigned char c[sizeof(double)];
}

