#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (void);
extern float (*v2) (void);
unsigned char v5 (unsigned short);
unsigned char (*v6) (unsigned short) = v5;
extern struct ss1 v9 (void);
extern struct ss1 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = -24186;
unsigned int v47 = 1289859549U;
double v46 = 6023333873541014886.21038;

unsigned char v5 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -36;
struct ss1 v51 = { 50097, 40743038, 2416446U, 166U, };
struct ss0 v50 = { 896138U, 488168U, 13790, };
trace++;
switch (trace)
{
case 1: 
return 11;
case 3: 
return 214;
case 10: 
return 126;
default: abort ();
}
}
}
}
