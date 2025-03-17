







#ifdef __cplusplus
#include <iostream>

struct SS {
     int   s1;
     float s2;
     SS() {s1 = 0; s2 = 0;}
};
union  UU {
     int   u1;
     float u2;
     UU() {u1 = 0; u2 = 0;}
};

class CC {
     int   c1;
     float c2;
public:
    void set_c1(int cc) { c1 = cc;}
    void set_c2(float cc) { c2 = cc;}
    int get_c1() { return c1; }
    float get_c2() { return c2; }
    CC() {c1 = 0; c2 = 0;}
};

class SET {
public:
  char           i1 = 0;
  short          i2 = 0;
  int            i4 = 0;
  long           i8 = 0;
  unsigned char  u1 = 0;
  unsigned short u2 = 0;
  unsigned int   u4 = 0;
  unsigned long  u8 = 0;
  float          f4 = 0;
  double         f8 = 0;
  long double   f16 = 0;
  struct SS      ss;
  union  UU      uu;
  CC      cc;
};

#endif 

int main() {
#if __cplusplus 
  SET set;

  printf("  %d  %d  %d  %ld  %u  %u  %u  %lu  %f  %f  %Lf \n",
            set.i1, set.i2, set.i4, set.i8, set.u1, set.u2, set.u4, set.u8, set.f4, set.f8, set.f16);
  printf("  %d  %f  %d  %f \n",set.ss.s1, set.ss.s2, set.uu.u1, set.uu.u2);
#else 
  printf("  %d  %d  %d  %d  %d  %d  %d  %d  %f  %f  %f \n",
            0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0);
  printf("  %d  %f  %d  %f \n",0 , 0.0 , 0 , 0.0 );
#endif 
  return 0;
}
