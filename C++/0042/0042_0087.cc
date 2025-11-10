
enum G : char;
enum class H;


enum class H {h1, h2, h3};

enum I : unsigned char;


extern "C" int printf(const char*,...);

int main()
{
  enum G g;
  enum H h;
  
  h = H::h3;
  
  printf("ok\n");

  return 0;
}
