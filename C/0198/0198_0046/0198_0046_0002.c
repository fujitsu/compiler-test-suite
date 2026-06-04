#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
float v1 (void);
float (*v2) (void) = v1;
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned char v5 (float, unsigned short, unsigned int);
extern unsigned char (*v6) (float, unsigned short, unsigned int);
extern float v7 (signed int, float, struct ss0, unsigned short);
extern float (*v8) (signed int, float, struct ss0, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v49 = {-1986867030 };
unsigned char v48 = 31;
double v47 = 1251285673866674586.16992;

signed short v3 (void)
{
{
for (;;) {
struct ss0 v52 = { 165172U, 985056U, 12700, };
struct ss1 v51 = { 59854, 35037276, 17505275U, 464U, };
unsigned short v50 = 56129;
trace++;
switch (trace)
{
case 7: 
return 23300;
case 9: 
{
signed int v53;
float v54;
struct ss0 v55;
unsigned short v56;
float v57;
v53 = 1765662117 + -1745339473;
v54 = 1712506138.13418F;
v55.f2 = 752596U;
v55.f1 = 201823U;
v55.f0 = v50;
v56 = v50 + 22303;
v57 = v7 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 11: 
return -3375;
default: abort ();
}
}
}
}

float v1 (void)
{
{
for (;;) {
float v60 = 1103910634.36074F;
struct ss0 v59 = { 666491U, 722852U, 11230, };
union uu1 v58 = {-430939796 };
trace++;
switch (trace)
{
case 0: 
return v60;
case 1: 
return v60;
case 2: 
return v60;
case 3: 
{
float v61;
unsigned short v62;
unsigned int v63;
unsigned char v64;
v61 = v60;
v62 = 38442 + 43925;
v63 = 876318405U + 283870339U;
v64 = (*v6) (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 15: 
return v60;
default: abort ();
}
}
}
}
