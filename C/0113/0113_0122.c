#include <stdio.h>

unsigned int a;

static int brgez_i2() {
  if ((signed short)a < 0) return 1;
  else { printf("brgez: ng\n"); return 0; }
}
static int brgz_i2() {
  if ((signed short)a <= 0) return 1;
  else { printf("brgz: ng\n"); return 0; }
}
static int brlez_i2() {
  if ((signed short)a > 0) return 1;
  else { printf("brlez: ng\n"); return 0; }
}
static int brlz_i2() {
  if ((signed short)a >= 0) return 1;
  else { printf("brlz: ng\n"); return 0; }
}
static int brz_i2() {
  if ((signed short)a != 0) return 1;
  else { printf("brz: ng\n"); return 0; }
}
static int brnz_i2() {
  if ((signed short)a == 0) return 1;
  else { printf("brnz: ng\n"); return 0; }
}

static int brgez_i1() {
  if ((signed char)a < 0) return 1;
  else { printf("brgez: ng\n"); return 0; }
}
static int brgz_i1() {
  if ((signed char)a <= 0) return 1;
  else { printf("brgz: ng\n"); return 0; }
}
static int brlez_i1() {
  if ((signed char)a > 0) return 1;
  else { printf("brlez: ng\n"); return 0; }
}
static int brlz_i1() {
  if ((signed char)a >= 0) return 1;
  else { printf("brlz: ng\n"); return 0; }
}
static int brz_i1() {
  if ((signed char)a != 0) return 1;
  else { printf("brz: ng\n"); return 0; }
}
static int brnz_i1() {
  if ((signed char)a == 0) return 1;
  else { printf("brnz: ng\n"); return 0; }
}
int main() {
  int k = 0, i = 0;
  a = -2; k += brgez_i1(); i +=1;
  a = -2; k +=  brgz_i1(); i +=1;
  a =  2; k += brlez_i1(); i +=1;
  a =  2; k +=  brlz_i1(); i +=1;
  a =  1; k +=   brz_i1(); i +=1;
  a =  0; k +=  brnz_i1(); i +=1;
  a = -2; k += brgez_i2(); i +=1;
  a = -2; k +=  brgz_i2(); i +=1;
  a =  2; k += brlez_i2(); i +=1;
  a =  2; k +=  brlz_i2(); i +=1;
  a =  1; k +=   brz_i2(); i +=1;
  a =  0; k +=  brnz_i2(); i +=1;
  printf("%s\n", (k == i)?"ok":"ng");
}
