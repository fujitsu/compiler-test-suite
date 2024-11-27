#include <stdio.h>

unsigned int a;
static int brgez() {
  if ((int)a < 0) return 1;
  else { printf("brgez: ng\n"); return 0; }
}
static int brgz() {
  if ((int)a <= 0) return 1;
  else { printf("brgz: ng\n"); return 0; }
}
static int brlez() {
  if ((int)a > 0) return 1;
  else { printf("brlez: ng\n"); return 0; }
}
static int brlz() {
  if ((int)a >= 0) return 1;
  else { printf("brlz: ng\n"); return 0; }
}
static int brz() {
  if ((int)a != 0) return 1;
  else { printf("brz: ng\n"); return 0; }
}
static int brnz() {
  if ((int)a == 0) return 1;
  else { printf("brnz: ng\n"); return 0; }
}
int main() {
  int k = 0, i = 0;
  a = -9; k += brgez(); i +=1;
  a = -8; k += brgz();  i +=1;
  a =  7; k += brlez(); i +=1;
  a =  6; k += brlz();  i +=1;
  a =  1; k += brz();   i +=1;
  a =  0; k += brnz();  i +=1;
  printf("%s\n", (k == i)?"ok":"ng");
}
