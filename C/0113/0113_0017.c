#include <stdio.h>


typedef enum {MINUS = -1, EQUAL = 0, PLUS = 1} sign;

typedef signed int digits;

typedef struct {
  digits i;
  digits f;
  sign s;
} FDP;

#define SET_FDP(fdp, integer, frac, sign) \
  ((fdp).i=(integer), (fdp).f=(frac), (fdp).s = (sign))

#define ANS 2

static FDP funcFDP();
int main()
{
  FDP str1, str2, str3;
  FDP res;
  int ans;

  SET_FDP(str1, 0, 0, EQUAL);
  SET_FDP(str2, 1, 1, MINUS);
  SET_FDP(str3, 2, 2, PLUS);

  res = funcFDP(str1,str2,str3);
  
  ans = (int)res.i + (int)res.f + (int)res.s;


  if (ans == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}
  
static FDP funcFDP(s1,s2,s3)
     FDP s1,s2,s3;
{
  FDP z1;

  SET_FDP(z1,s1.i,s2.f,s3.s);

  return z1;
}
