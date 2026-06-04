#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
union uu1 v5 (void);
union uu1 (*v6) (void) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (signed char, struct ss1, struct ss1);
extern unsigned short (*v10) (signed char, struct ss1, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
float v36 = -146011879.44225F;
double v35 = -3355499081773876930.14773;
unsigned char v34 = 159;

union uu1 v5 (void)
{
{
for (;;) {
signed int v39 = 1089615253;
union uu1 v38 = {-1416144537 };
double v37 = -2614274669412213057.54681;
trace++;
switch (trace)
{
case 4: 
{
signed short v40;
v40 = (*v2) ();
history[history_index++] = (int)v40;
}
break;
case 16: 
{
union uu1 v41;
v41.f2 = 155;
return v41;
}
default: abort ();
}
}
}
}
