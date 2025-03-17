template <class T> class CT;
template <class T> void ft(T *);
template <class T> T vt;
template <> class [[deprecated]] CT<int> {};
template <> [[deprecated]] void ft<void>(void *){};
template <> [[deprecated]] int vt<int> = 2;

int test() {
  CT<int> *p = 0;
  ft<void>(p);
  return vt<int>;
}

int main() { test(); }
