#include <stdio.h>

void show_bit(unsigned short u);

int main(void) 
{
  unsigned short u;

  u = 4567;

  show_bit(u);
  u = u << 1;
  show_bit(u);
  u = u >> 1;
  show_bit(u);
  u = u >> 2;
  show_bit(u);

  return 0;
}

void show_bit(unsigned short u)
{
  unsigned short  n;

  for (n = 32768; n > 0; n= n / 2) {
    unsigned short k = u & n;
    if (k) {     
      printf("1 ");
    } else {
      printf("0 ");
    }
  }
  
  printf("\n");
}
