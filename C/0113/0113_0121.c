#include <stdio.h>

static int brgez(unsigned int *a) {
  if (*(int *)a < 0) return 1;
  else { printf("brgez: ng\n"); return 0; }
}
static int brgz(unsigned int *a) {
  if (*(int *)a <= 0) return 1;
  else { printf("brgz: ng\n"); return 0; }
}
static int brlez(unsigned int *a) {
  if (*(int *)a > 0) return 1;
  else { printf("brlez: ng\n"); return 0; }
}
static int brlz(unsigned int *a) {
  if (*(int *)a >= 0) return 1;
  else { printf("brlz: ng\n"); return 0; }
}
static int brz(unsigned int *a) {
  if (*(int *)a != 0) return 1;
  else { printf("brz: ng\n"); return 0; }
}
static int brnz(unsigned int *a) {
  if (*(int *)a == 0) return 1;
  else { printf("brnz: ng\n"); return 0; }
}
int main() {
  int k = 0, i = 0, a;
  a = -9; k += brgez((unsigned int *)&a); i +=1;
  a = -8; k += brgz((unsigned int *)&a);  i +=1;
  a =  7; k += brlez((unsigned int *)&a); i +=1;
  a =  6; k += brlz((unsigned int *)&a);  i +=1;
  a =  5; k += brz((unsigned int *)&a);   i +=1;
  a =  0; k += brnz((unsigned int *)&a);  i +=1;
  printf("%s\n", (k == i)?"ok":"ng");
}
