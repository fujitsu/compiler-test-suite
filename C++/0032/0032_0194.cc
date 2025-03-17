#include <stdio.h>
int main()
{
  int i=0x80000000;
  unsigned int ui=0x80000000;
  int i16 = 16;
  unsigned int u8 = 8U;

  i >>= 16U;
  if (i == 0xffff8000) {
    ui >>= 16;
    if (ui == 0x00008000) {
      ui >>= 16U;
      if (ui == 0) {
	i >>= u8;
	if (i == 0xffffff80) {
	  ui >>= i16;
	  if (ui == 0) {
	    ui >>= u8;
	    if (ui == 0)
	      printf("ok\n");
	    else
	      printf("ng\n");
	  }
	}
      }
    }
  }
}
