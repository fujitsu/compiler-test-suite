#define NORMAL_ROUTE 1
int main()
{
  struct tag2 {
#if !defined(OBE) && !defined(NORMAL_ROUTE)
    const int i;
#else
    int i;
#endif
  };
  struct tag {
    struct tag2 x;
  } z, y;
  z = y; 
}
