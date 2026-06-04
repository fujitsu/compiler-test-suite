#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (unsigned int, struct ss0);
extern struct ss0 (*v2) (unsigned int, struct ss0);
extern union uu1 v3 (struct ss0, union uu0, signed int, union uu0);
extern union uu1 (*v4) (struct ss0, union uu0, signed int, union uu0);
extern signed int v5 (signed short, unsigned int);
extern signed int (*v6) (signed short, unsigned int);
extern struct ss0 v7 (unsigned int, float, unsigned short, float);
extern struct ss0 (*v8) (unsigned int, float, unsigned short, float);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v39 = 16937;
signed short v38 = -21060;
signed int v37 = -1422470394;

signed char v9 (void)
{
{
for (;;) {
signed char v42 = -27;
struct ss0 v41 = { 330203U, 447941U, 32876, };
struct ss1 v40 = { 18410, -25773336, 58335897U, 39U, };
trace++;
switch (trace)
{
case 3: 
return 118;
case 5: 
return v42;
case 9: 
return v42;
default: abort ();
}
}
}
}
