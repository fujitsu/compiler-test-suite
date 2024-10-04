#include <stdio.h>
static const unsigned short big5_to_ucs[] =
{
  [    0] = 0x3000, [    1] = 0xFF0C, [    2] = 0x3001, [    3] = 0x3002,
  [    4] = 0xFF0E, [    5] = 0x2022, [    6] = 0xFF1B, [    7] = 0xFF1A,
};

static const short from_ucs4_tab8[] = {
  [3] = 0xffff,
};

static const char from_ucs4_tab9[][2] =
{
  [0x0000] = "\xa1\x40", [0x0001] = "\xa1\x42", [0x0002] = "\xa1\x43",
};
int main()
{
  int i;
  
  for (i=0;i<8;i++){
    printf("%d\n",big5_to_ucs[i]);
  }

  printf("%d\n",from_ucs4_tab8[3]);
  
  printf("%d\n",from_ucs4_tab9[0][0]);
  printf("%d\n",from_ucs4_tab9[0][1]);
  printf("%d\n",from_ucs4_tab9[1][0]);

}
