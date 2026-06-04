#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern double v3 (unsigned short, struct ss0, unsigned char);
extern double (*v4) (unsigned short, struct ss0, unsigned char);
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v36 = { 64238, 62537510, 66634775U, 320U, };
unsigned int v35 = 52098547U;
union uu1 v34 = {1287115069 };

unsigned int v9 (void)
{
{
for (;;) {
unsigned short v39 = 41751;
unsigned short v38 = 49985;
unsigned char v37 = 208;
trace++;
switch (trace)
{
case 6: 
return 284636497U;
case 9: 
return 2256190161U;
case 11: 
return 2871070564U;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed int v42 = -1862523502;
signed short v41 = -22007;
struct ss1 v40 = { 61897, 4832654, 18414984U, 38U, };
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v43;
v43 = (*v6) ();
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
break;
case 16: 
return 2540164107U;
default: abort ();
}
}
}
}
