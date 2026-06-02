#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (void);
struct ss1 (*v2) (void) = v1;
extern double v3 (float, struct ss1);
extern double (*v4) (float, struct ss1);
extern struct ss1 v5 (double, union uu1, unsigned int);
extern struct ss1 (*v6) (double, union uu1, unsigned int);
extern void v7 (float, unsigned char);
extern void (*v8) (float, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v13 = 168;
double v12 = 5466740309712750466.55028;
unsigned char v11 = 5;

struct ss1 v1 (void)
{
{
for (;;) {
signed char v16 = -6;
float v15 = 985061882.37445F;
double v14 = -6995264390794180829.35581;
trace++;
switch (trace)
{
case 0: 
{
double v17;
union uu1 v18;
unsigned int v19;
struct ss1 v20;
#if defined(__aarch64__)
v17 = -2147483648;
#else
v17 = -1525393905002666160.21296;
#endif
v18.f2 = 19;
v19 = 3461665155U + 586958206U;
v20 = (*v6) (v17, v18, v19);
history[history_index++] = (int)v20.f3;
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
}
break;
case 2: 
{
struct ss1 v21;
v21.f3 = 38611;
v21.f2 = 5270600;
v21.f1 = 18550433U;
v21.f0 = 27U;
return v21;
}
case 18: 
{
struct ss1 v22;
v22.f3 = 14178;
v22.f2 = -56505336;
v22.f1 = 7644806U;
v22.f0 = 249U;
return v22;
}
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
struct ss1 v25;
v25 = (*v2) ();
history[history_index++] = (int)v25.f3;
history[history_index++] = (int)v25.f2;
history[history_index++] = (int)v25.f1;
history[history_index++] = (int)v25.f0;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
