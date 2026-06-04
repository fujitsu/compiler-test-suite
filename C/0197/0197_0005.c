#include <stdio.h>

struct ar_hdr{
  char ar_name[100];
};

unsigned long sub() {return 10;}
void bfd_gnu_truncate_arname (struct ar_hdr * hdr) {
  unsigned long maxlen = sub();
  hdr->ar_name[maxlen - 2] = '.';
}

int main() {
  struct ar_hdr aaa;
  bfd_gnu_truncate_arname(&aaa);
  if (aaa.ar_name[8] == '.') {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
