#include <stdio.h>

template <class Class> class XXX;
template <class Class>
inline bool operator== (const XXX<Class>& x1, const XXX<Class>& x2);

template <class Class>
class XXX {
private:
  friend bool operator== <> (const XXX<Class>& x1,
                             const XXX<Class>& x2);
};

template <class Class>
inline bool operator== (const XXX<Class>& x1, const XXX<Class>& x2) {
  return true;
}

int main() {
  XXX<char> o1, o2;
  if(o1==o2)
    printf("ok\n");
  else
    printf("ng\n");
  return 0;
}

