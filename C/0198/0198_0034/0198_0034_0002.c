#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern double v3 (unsigned short, struct ss0, unsigned char);
extern double (*v4) (unsigned short, struct ss0, unsigned char);
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v46 = -1256967080;
union uu1 v45 = {-2109768911 };
struct ss1 v44 = { 25461, 51843924, 16489833U, 442U, };

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v49 = 474621493U;
unsigned int v48 = 4207877419U;
double v47 = -8856139514919619821.61381;
trace++;
switch (trace)
{
case 4: 
return 359223668U;
case 8: 
{
unsigned int v50;
v50 = (*v10) ();
history[history_index++] = (int)v50;
}
break;
case 10: 
{
unsigned int v51;
v51 = v9 ();
history[history_index++] = (int)v51;
}
break;
case 12: 
return v49;
default: abort ();
}
}
}
}
