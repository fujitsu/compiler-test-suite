extern "C" int printf(const char *, ...);
#if __EDG_VERSION__ >= 410
struct D3 { ~D3(); };  
#else 
struct D3 {};
#endif 
D3 g3() {
  return ({ D3 d; d; }); 
}
int main() {
  g3();
  printf("OK\n");
  return 0;
}
#if __EDG_VERSION__ >= 410
D3::~D3() {};
#endif 
