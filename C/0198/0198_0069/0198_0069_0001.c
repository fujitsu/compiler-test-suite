#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (void);
extern struct ss1 (*v2) (void);
double v3 (float, struct ss1);
double (*v4) (float, struct ss1) = v3;
extern struct ss1 v5 (double, union uu1, unsigned int);
extern struct ss1 (*v6) (double, union uu1, unsigned int);
extern void v7 (float, unsigned char);
extern void (*v8) (float, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
float v28 = -1265018967.53080F;
signed short v27 = 25504;
unsigned short v26 = 17042;

double v3 (float v29, struct ss1 v30)
{
history[history_index++] = (int)v29;
history[history_index++] = (int)v30.f3;
history[history_index++] = (int)v30.f2;
history[history_index++] = (int)v30.f1;
history[history_index++] = (int)v30.f0;
{
for (;;) {
float v33 = 903144397.21791F;
union uu0 v32 = {3183690396U };
signed char v31 = -6;
trace++;
switch (trace)
{
case 4: 
{
float v34;
unsigned char v35;
v34 = v33;
v35 = 214 + 31;
(*v8) (v34, v35);
}
break;
case 16: 
#if defined(__aarch64__)
 return -2147483648;
#else
return -1705514961665165592.53366;
#endif
default: abort ();
}
}
}
}
