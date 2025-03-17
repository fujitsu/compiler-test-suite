
#include <stdio.h>

int main()
{
  char opt;
   opt = 'a';

    switch (opt) {
    case 'a':
      printf("ok\n");
      break;
    case 'Z':
      printf("Z\n");
      break;
    case 'l':
      printf("l\n");
      break;
    case 'V':
      printf("V\n");
      break;
    case 'E':
    case 'b':
      printf("Eb\n");
      break;
    }

}


