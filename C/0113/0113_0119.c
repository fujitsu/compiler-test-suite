#include <stdio.h>

unsigned int a, b;

static int brgez_or_brgez() {
  if ((int)a < 0 || (int)b < 0) return 1;
  else { printf("brgez: ng1\n"); return 0; }
}
static int brgez_or_brgz() {
  if ((int)a < 0 || (int)b <= 0) return 1;
  else { printf("brgez: ng2\n"); return 0; }
}
static int brgez_or_brlez() {
  if ((int)a < 0 || (int)b > 0) return 1;
  else { printf("brgez: ng3\n"); return 0; }
}
static int brgez_or_brlz() {
  if ((int)a < 0 || (int)b >= 0) return 1;
  else { printf("brgez: ng4\n"); return 0; }
}
static int brgez_or_brz() {
  if ((int)a < 0 || (int)b != 0) return 1;
  else { printf("brgez: ng5\n"); return 0; }
}
static int brgez_or_brnz() {
  if ((int)a < 0 || (int)b == 0) return 1;
  else { printf("brgez: ng6\n"); return 0; }
}


static int brgz_or_brgez() {
  if ((int)a <= 0 || (int)b < 0) return 1;
  else { printf("brgz: ng1\n"); return 0; }
}
static int brgz_or_brgz() {
  if ((int)a <= 0 || (int)b <= 0) return 1;
  else { printf("brgz: ng2\n"); return 0; }
}
static int brgz_or_brlez() {
  if ((int)a <= 0 || (int)b > 0) return 1;
  else { printf("brgz: ng3\n"); return 0; }
}
static int brgz_or_brlz() {
  if ((int)a <= 0 || (int)b >= 0) return 1;
  else { printf("brgz: ng4\n"); return 0; }
}
static int brgz_or_brz() {
  if ((int)a <= 0 || (int)b != 0) return 1;
  else { printf("brgz: ng5\n"); return 0; }
}
static int brgz_or_brnz() {
  if ((int)a <= 0 || (int)b == 0) return 1;
  else { printf("brgz: ng6\n"); return 0; }
}


static int brlez_or_brgez() {
  if ((int)a > 0 || (int)b < 0) return 1;
  else { printf("brlez: ng1\n"); return 0; }
}
static int brlez_or_brgz() {
  if ((int)a > 0 || (int)b <= 0) return 1;
  else { printf("brlez: ng2\n"); return 0; }
}
static int brlez_or_brlez() {
  if ((int)a > 0 || (int)b > 0) return 1;
  else { printf("brlez: ng3\n"); return 0; }
}
static int brlez_or_brlz() {
  if ((int)a > 0 || (int)b >= 0) return 1;
  else { printf("brlez: ng4\n"); return 0; }
}
static int brlez_or_brz() {
  if ((int)a > 0 || (int)b != 0) return 1;
  else { printf("brlez: ng5\n"); return 0; }
}
static int brlez_or_brnz() {
  if ((int)a > 0 || (int)b == 0) return 1;
  else { printf("brlez: ng6\n"); return 0; }
}


static int brlz_or_brgez() {
  if ((int)a >= 0 || (int)b < 0) return 1;
  else { printf("brlz: ng1\n"); return 0; }
}
static int brlz_or_brgz() {
  if ((int)a >= 0 || (int)b <= 0) return 1;
  else { printf("brlz: ng2\n"); return 0; }
}
static int brlz_or_brlez() {
  if ((int)a >= 0 || (int)b > 0) return 1;
  else { printf("brlz: ng3\n"); return 0; }
}
static int brlz_or_brlz() {
  if ((int)a >= 0 || (int)b >= 0) return 1;
  else { printf("brlz: ng4\n"); return 0; }
}
static int brlz_or_brz() {
  if ((int)a >= 0 || (int)b != 0) return 1;
  else { printf("brlz: ng5\n"); return 0; }
}
static int brlz_or_brnz() {
  if ((int)a >= 0 || (int)b == 0) return 1;
  else { printf("brlz: ng6\n"); return 0; }
}


static int brz_or_brgez() {
  if ((int)a != 0 || (int)b < 0) return 1;
  else { printf("brz: ng1\n"); return 0; }
}
static int brz_or_brgz() {
  if ((int)a != 0 || (int)b <= 0) return 1;
  else { printf("brz: ng2\n"); return 0; }
}
static int brz_or_brlez() {
  if ((int)a != 0 || (int)b > 0) return 1;
  else { printf("brz: ng3\n"); return 0; }
}
static int brz_or_brlz() {
  if ((int)a != 0 || (int)b >= 0) return 1;
  else { printf("brz: ng4\n"); return 0; }
}
static int brz_or_brz() {
  if ((int)a != 0 || (int)b != 0) return 1;
  else { printf("brz: ng5\n"); return 0; }
}
static int brz_or_brnz() {
  if ((int)a != 0 || (int)b == 0) return 1;
  else { printf("brz: ng6\n"); return 0; }
}


static int brnz_or_brgez() {
  if ((int)a == 0 || (int)b < 0) return 1;
  else { printf("brnz: ng1\n"); return 0; }
}
static int brnz_or_brgz() {
  if ((int)a == 0 || (int)b <= 0) return 1;
  else { printf("brnz: ng2\n"); return 0; }
}
static int brnz_or_brlez() {
  if ((int)a == 0 || (int)b > 0) return 1;
  else { printf("brnz: ng3\n"); return 0; }
}
static int brnz_or_brlz() {
  if ((int)a == 0 || (int)b >= 0) return 1;
  else { printf("brnz: ng4\n"); return 0; }
}
static int brnz_or_brz() {
  if ((int)a == 0 || (int)b != 0) return 1;
  else { printf("brnz: ng5\n"); return 0; }
}
static int brnz_or_brnz() {
  if ((int)a == 0 || (int)b == 0) return 1;
  else { printf("brnz: ng6\n"); return 0; }
}
int main() {
  int k = 0, i = 0;
  a = -9; b = -8; k += brgez_or_brgez(); i +=1;
  a = -9; b = -8; k += brgez_or_brgz();  i +=1;
  a = -9; b =  7; k += brgez_or_brlez(); i +=1;
  a = -9; b =  7; k += brgez_or_brlz();  i +=1;
  a = -9; b =  4; k += brgez_or_brz();   i +=1;
  a = -9; b =  0; k += brgez_or_brnz();  i +=1;

  a =  0; b = -8; k += brgz_or_brgez();  i +=1;
  a = -8; b = -8; k += brgz_or_brgz();   i +=1;
  a =  0; b =  7; k += brgz_or_brlez();  i +=1;
  a = -8; b =  7; k += brgz_or_brlz();   i +=1;
  a = -8; b =  3; k += brgz_or_brz();    i +=1;
  a = -8; b =  0; k += brgz_or_brnz();   i +=1;

  a =  7; b = -1; k += brlez_or_brgez(); i +=1;
  a =  7; b = -2; k += brlez_or_brgz();  i +=1;
  a =  7; b =  3; k += brlez_or_brlez(); i +=1;
  a =  7; b =  4; k += brlez_or_brlz();  i +=1;
  a =  7; b =  5; k += brlez_or_brz();   i +=1;
  a =  7; b =  0; k += brlez_or_brnz();  i +=1;

  a =  0; b = -1; k += brlz_or_brgez();  i +=1;
  a =  6; b = -2; k += brlz_or_brgz();   i +=1;
  a =  0; b =  3; k += brlz_or_brlez();  i +=1;
  a =  6; b =  4; k += brlz_or_brlz();   i +=1;
  a =  6; b =  5; k += brlz_or_brz();    i +=1;
  a =  6; b =  0; k += brlz_or_brnz();   i +=1;
					  
  a =  1; b = -1; k += brz_or_brgez();   i +=1;
  a =  1; b = -2; k += brz_or_brgz();    i +=1;
  a =  1; b =  3; k += brz_or_brlez();   i +=1;
  a =  1; b =  4; k += brz_or_brlz();    i +=1;
  a =  1; b =  5; k += brz_or_brz();     i +=1;
  a =  1; b =  0; k += brz_or_brnz();    i +=1;
					  
  a =  0; b = -1; k += brnz_or_brgez();  i +=1;
  a =  0; b = -2; k += brnz_or_brgz();   i +=1;
  a =  0; b =  3; k += brnz_or_brlez();  i +=1;
  a =  0; b =  4; k += brnz_or_brlz();   i +=1;
  a =  0; b =  5; k += brnz_or_brz();    i +=1;
  a =  0; b =  0; k += brnz_or_brnz();   i +=1;
  printf("%s\n", (k == i)?"ok":"ng");
}
