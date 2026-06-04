#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (unsigned char);
signed int (*v4) (unsigned char) = v3;
extern unsigned char v5 (double, signed int, signed int, double);
extern unsigned char (*v6) (double, signed int, signed int, double);
struct ss0 v7 (union uu1);
struct ss0 (*v8) (union uu1) = v7;
double v9 (void);
double (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v46 = { 926126U, 821870U, 51851, };
signed short v45 = -11639;
struct ss0 v44 = { 404543U, 23916U, 49437, };

double v9 (void)
{
{
for (;;) {
float v49 = -370940671.31268F;
signed char v48 = -108;
signed int v47 = 1468557556;
trace++;
switch (trace)
{
case 5: 
#if defined(__aarch64__)
 return -2147483648;
#else
return -4187041340917325138.20350;
#endif
default: abort ();
}
}
}
}

struct ss0 v7 (union uu1 v50)
{
history[history_index++] = (int)v50.f2;
{
for (;;) {
float v53 = -635632792.39516F;
struct ss0 v52 = { 836531U, 338705U, 46932, };
struct ss1 v51 = { 53665, 62289217, 27563737U, 356U, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
double v57 = -4047923774289985797.46440;
signed short v56 = -17272;
unsigned char v55 = 73;
trace++;
switch (trace)
{
case 1: 
return -1206707882;
case 3: 
{
signed short v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
break;
case 7: 
{
signed short v59;
v59 = (*v2) ();
history[history_index++] = (int)v59;
}
break;
case 9: 
{
signed short v60;
v60 = (*v2) ();
history[history_index++] = (int)v60;
}
break;
case 13: 
return -686949140;
case 15: 
return 1699712131;
case 17: 
return 600117084;
default: abort ();
}
}
}
}
