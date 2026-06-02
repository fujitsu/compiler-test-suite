#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
struct ss1 v5 (unsigned short, signed short);
struct ss1 (*v6) (unsigned short, signed short) = v5;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v19 = 21381;
unsigned short v18 = 59031;
float v17 = 1800471204.25565F;

struct ss1 v5 (unsigned short v20, signed short v21)
{
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
{
for (;;) {
signed char v24 = 86;
signed char v23 = -116;
unsigned short v22 = 38370;
trace++;
switch (trace)
{
case 1: 
{
signed char v25;
v25 = v9 ();
history[history_index++] = (int)v25;
}
break;
case 7: 
{
unsigned short v26;
v26 = (*v2) ();
history[history_index++] = (int)v26;
}
break;
case 9: 
{
signed char v27;
v27 = v9 ();
history[history_index++] = (int)v27;
}
break;
case 13: 
{
struct ss1 v28;
v28.f3 = 64376;
v28.f2 = 15159701;
v28.f1 = 48555637U;
v28.f0 = 260U;
return v28;
}
case 15: 
{
struct ss1 v29;
v29.f3 = v20;
v29.f2 = -58950604;
v29.f1 = 58826355U;
v29.f0 = 143U;
return v29;
}
default: abort ();
}
}
}
}
