#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned char v1 (double);
extern unsigned char (*v2) (double);
void v3 (float);
void (*v4) (float) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (signed char, unsigned short, union uu0);
extern signed int (*v8) (signed char, unsigned short, union uu0);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = -429409352;
union uu0 v12 = {1052873104U };
union uu1 v11 = {1687726275 };

void v3 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
struct ss0 v17 = { 924835U, 931388U, 39076, };
unsigned int v16 = 2143975890U;
unsigned char v15 = 72;
trace++;
switch (trace)
{
case 1: 
return;
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
double v20;
unsigned char v21;
#if defined(__aarch64__)
 v20 = -2147483648;
#else
v20 = -3716986117817578624.25395;
#endif
v21 = v1 (v20);
history[history_index++] = (int)v21;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
