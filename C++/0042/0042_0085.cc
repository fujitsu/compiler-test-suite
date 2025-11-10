enum class E { a, b };
enum E x1 = E::a; 


enum F { a, b };
enum F y1 = a; 
               


enum G : int;
enum class H;

enum G : int {g1, g2, g3};
enum class H {h1, h2, h3};

extern "C" int printf(const char*,...);

int main()
{
  enum G g;
  enum H h;
  g = g2;
  h = H::h3;
  if (((int)g == 1) && ((int)h == 2)) {
    printf("OK\n");
  } else {
    printf("FAIL\n");
  }
  return 0;
}
