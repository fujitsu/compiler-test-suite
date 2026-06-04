#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (unsigned short, union uu0);
extern unsigned short (*v2) (unsigned short, union uu0);
float v3 (float, signed char, float, signed char);
float (*v4) (float, signed char, float, signed char) = v3;
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 92;
unsigned int v59 = 656275451U;
signed int v58 = 1880090601;

unsigned char v7 (unsigned short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 1102003057U;
unsigned short v63 = 56145;
struct ss0 v62 = { 144891U, 239732U, 36776, };
trace++;
switch (trace)
{
case 4: 
{
unsigned short v65;
union uu0 v66;
unsigned short v67;
v65 = v61 + v63;
v66.f3 = 25;
v67 = v1 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned short v68;
union uu0 v69;
unsigned short v70;
v68 = 57880 - v63;
v69.f0 = -33;
v70 = v1 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 10: 
{
signed short v71;
v71 = v9 ();
history[history_index++] = (int)v71;
}
break;
case 12: 
return 29;
case 14: 
return 164;
default: abort ();
}
}
}
}

float v3 (float v72, signed char v73, float v74, signed char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 59004;
double v77 = 234734255043717673.1317;
signed char v76 = -32;
trace++;
switch (trace)
{
case 8: 
return v74;
default: abort ();
}
}
}
}
