#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (struct ss1, unsigned char, signed char, signed int);
extern signed int (*v2) (struct ss1, unsigned char, signed char, signed int);
extern struct ss0 v3 (void);
extern struct ss0 (*v4) (void);
extern unsigned int v5 (float, signed char);
extern unsigned int (*v6) (float, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 3541609760U;
signed short v12 = 23938;
float v11 = 466786683.56454F;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
struct ss1 v16;
unsigned char v17;
signed char v18;
signed int v19;
signed int v20;
v16.f3 = 32208;
v16.f2 = 46557083;
v16.f1 = 54759706U;
v16.f0 = 40U;
v17 = 174 - 238;
v18 = -87 - -85;
v19 = -1565334574 - -1282684068;
v20 = v1 (v16, v17, v18, v19);
history[history_index++] = (int)v20;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
