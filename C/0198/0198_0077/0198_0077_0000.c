#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (struct ss0, signed char);
extern void (*v2) (struct ss0, signed char);
float v5 (void);
float (*v6) (void) = v5;
extern int history[];
extern int history_index;
extern int trace;
float v13 = 1340621650.42856F;
signed int v12 = 7613297;
signed char v11 = 115;

float v5 (void)
{
{
for (;;) {
signed short v16 = -19125;
struct ss1 v15 = { 39357, -11367001, 59566814U, 318U, };
union uu1 v14 = {-1313747312 };
trace++;
switch (trace)
{
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
struct ss0 v19;
signed char v20;
v19.f2 = 521854U;
v19.f1 = 78134U;
v19.f0 = 42548;
v20 = -63 + v11;
(*v2) (v19, v20);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
