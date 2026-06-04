#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v1 (void);
void (*v2) (void) = v1;
extern unsigned short v3 (struct ss0);
extern unsigned short (*v4) (struct ss0);
extern unsigned char v5 (unsigned short, struct ss0, unsigned int, double);
extern unsigned char (*v6) (unsigned short, struct ss0, unsigned int, double);
extern struct ss1 v9 (void);
extern struct ss1 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v57 = { 925483U, 701745U, 54775, };
signed char v56 = -56;
signed char v55 = -83;

void v1 (void)
{
{
for (;;) {
signed short v60 = 1403;
unsigned short v59 = 49443;
union uu0 v58 = {1070980483U };
trace++;
switch (trace)
{
case 0: 
{
struct ss1 v61;
v61 = (*v10) ();
history[history_index++] = (int)v61.f3;
history[history_index++] = (int)v61.f2;
history[history_index++] = (int)v61.f1;
history[history_index++] = (int)v61.f0;
}
break;
case 2: 
{
struct ss1 v62;
v62 = v9 ();
history[history_index++] = (int)v62.f3;
history[history_index++] = (int)v62.f2;
history[history_index++] = (int)v62.f1;
history[history_index++] = (int)v62.f0;
}
break;
case 4: 
{
struct ss0 v63;
unsigned short v64;
v63.f2 = 932510U;
v63.f1 = 318551U;
v63.f0 = 54696;
v64 = (*v4) (v63);
history[history_index++] = (int)v64;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
