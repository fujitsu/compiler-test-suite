#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (void);
extern struct ss1 (*v2) (void);
extern unsigned short v3 (union uu0, signed char, signed int);
extern unsigned short (*v4) (union uu0, signed char, signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
signed char v9 (struct ss0, signed int);
signed char (*v10) (struct ss0, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu0 v49 = {123224449U };
unsigned int v48 = 3001465980U;
signed char v47 = -28;

signed char v9 (struct ss0 v50, signed int v51)
{
history[history_index++] = (int)v50.f2;
history[history_index++] = (int)v50.f1;
history[history_index++] = (int)v50.f0;
history[history_index++] = (int)v51;
{
for (;;) {
float v54 = -581477061.1699F;
unsigned int v53 = 4062461172U;
unsigned int v52 = 3763421096U;
trace++;
switch (trace)
{
case 4: 
{
struct ss1 v55;
v55 = v1 ();
history[history_index++] = (int)v55.f3;
history[history_index++] = (int)v55.f2;
history[history_index++] = (int)v55.f1;
history[history_index++] = (int)v55.f0;
}
break;
case 6: 
return 106;
case 11: 
return 81;
case 14: 
return -106;
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
float v58 = -1118813897.57966F;
struct ss0 v57 = { 1032765U, 26024U, 12356, };
unsigned int v56 = 2527721362U;
trace++;
switch (trace)
{
case 1: 
return v56;
case 8: 
return 1569730197U;
default: abort ();
}
}
}
}
