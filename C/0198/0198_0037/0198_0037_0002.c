#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (unsigned char, unsigned char, signed short);
extern signed int (*v2) (unsigned char, unsigned char, signed short);
extern struct ss0 v3 (struct ss0, unsigned char, unsigned char, signed int);
extern struct ss0 (*v4) (struct ss0, unsigned char, unsigned char, signed int);
struct ss1 v5 (signed short, signed char, signed short);
struct ss1 (*v6) (signed short, signed char, signed short) = v5;
extern union uu1 v7 (unsigned char, unsigned int, unsigned short);
extern union uu1 (*v8) (unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v68 = -14277;
float v67 = -1748046315.2878F;
unsigned char v66 = 73;

struct ss1 v5 (signed short v69, signed char v70, signed short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 16705;
float v73 = 910605657.5209F;
struct ss0 v72 = { 859981U, 605991U, 17901, };
trace++;
switch (trace)
{
case 2: 
{
struct ss1 v75;
v75.f3 = v74;
v75.f2 = 70771;
v75.f1 = 60811752U;
v75.f0 = 120U;
return v75;
}
case 4: 
{
struct ss1 v76;
v76.f3 = 32703;
v76.f2 = 17521241;
v76.f1 = 41617811U;
v76.f0 = 164U;
return v76;
}
case 10: 
{
signed short v77;
signed char v78;
signed short v79;
struct ss1 v80;
v77 = 2180 - v69;
v78 = -32 - -103;
v79 = v71 - v69;
v80 = (*v6) (v77, v78, v79);
history[history_index++] = (int)v80.f3;
history[history_index++] = (int)v80.f2;
history[history_index++] = (int)v80.f1;
history[history_index++] = (int)v80.f0;
}
break;
case 11: 
{
struct ss1 v81;
v81.f3 = v74;
v81.f2 = -17515446;
v81.f1 = 21102490U;
v81.f0 = 338U;
return v81;
}
case 12: 
{
struct ss1 v82;
v82.f3 = 19219;
v82.f2 = 1326916;
v82.f1 = 2746506U;
v82.f0 = 122U;
return v82;
}
default: abort ();
}
}
}
}
