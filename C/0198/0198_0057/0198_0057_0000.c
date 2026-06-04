#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v1 (struct ss0, signed short, unsigned short, unsigned char);
extern union uu1 (*v2) (struct ss0, signed short, unsigned short, unsigned char);
extern struct ss1 v5 (signed short, unsigned char, unsigned char, unsigned int);
extern struct ss1 (*v6) (signed short, unsigned char, unsigned char, unsigned int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 12667, -31624957, 27128859U, 143U, };
unsigned char v12 = 38;
signed char v11 = 99;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
struct ss0 v16;
signed short v17;
unsigned short v18;
unsigned char v19;
union uu1 v20;
v16.f2 = 115508U;
v16.f1 = 626417U;
v16.f0 = 34084;
v17 = -19040 + 28638;
v18 = 33515 + 23103;
v19 = v12 - 114;
v20 = (*v2) (v16, v17, v18, v19);
history[history_index++] = (int)v20.f2;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
