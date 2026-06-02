#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v3 (signed int);
void (*v4) (signed int) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern struct ss1 v7 (signed int, unsigned char);
extern struct ss1 (*v8) (signed int, unsigned char);
extern unsigned int v9 (union uu0);
extern unsigned int (*v10) (union uu0);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v51 = 170;
float v50 = -917359476.14018F;
unsigned int v49 = 248533584U;

void v3 (signed int v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 44972;
struct ss1 v54 = { 33861, -66795209, 34862574U, 401U, };
signed int v53 = 2055954594;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
{
signed int v56;
unsigned char v57;
struct ss1 v58;
v56 = v53 - v52;
v57 = 156 - 101;
v58 = (*v8) (v56, v57);
history[history_index++] = (int)v58.f3;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v58.f1;
history[history_index++] = (int)v58.f0;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
