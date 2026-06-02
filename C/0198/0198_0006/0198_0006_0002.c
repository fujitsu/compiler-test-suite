#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned short v3 (signed char, signed short);
extern unsigned short (*v4) (signed char, signed short);
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
extern signed char v7 (signed short, signed short, signed int);
extern signed char (*v8) (signed short, signed short, signed int);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v43 = 22378;
signed char v42 = 43;
unsigned short v41 = 9894;

unsigned int v1 (void)
{
{
for (;;) {
struct ss1 v46 = { 63681, -46586661, 17681726U, 198U, };
unsigned int v45 = 195377517U;
float v44 = -132420532.19918F;
trace++;
switch (trace)
{
case 0: 
return 330509287U;
case 1: 
return 1426868669U;
case 2: 
{
struct ss0 v47;
v47 = (*v6) ();
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v47.f1;
history[history_index++] = (int)v47.f0;
}
break;
case 4: 
{
unsigned int v48;
v48 = (*v2) ();
history[history_index++] = (int)v48;
}
break;
case 5: 
{
struct ss0 v49;
v49 = v5 ();
history[history_index++] = (int)v49.f2;
history[history_index++] = (int)v49.f1;
history[history_index++] = (int)v49.f0;
}
break;
case 7: 
{
unsigned int v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
break;
case 8: 
{
signed short v51;
signed short v52;
signed int v53;
signed char v54;
v51 = -21550 + 29133;
v52 = -22595 + -23375;
v53 = 1180103822 - -317939511;
v54 = (*v8) (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 10: 
{
signed short v55;
signed short v56;
signed int v57;
signed char v58;
v55 = -32696 + 30042;
v56 = 1960 + -29251;
v57 = 36914651 - -1341345657;
v58 = (*v8) (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
return 165716066U;
case 13: 
return 2548882696U;
case 15: 
return 4001772258U;
case 16: 
return v45;
case 18: 
return v45;
default: abort ();
}
}
}
}
