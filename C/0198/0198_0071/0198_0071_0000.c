#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (union uu0, struct ss0);
extern signed short (*v2) (union uu0, struct ss0);
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 59049;
double v12 = -2888867665994859229.51396;
float v11 = 1415716140.10091F;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
union uu0 v16;
struct ss0 v17;
signed short v18;
v16.f3 = -14;
v17.f2 = 6216U;
v17.f1 = 254945U;
v17.f0 = 58896;
v18 = v1 (v16, v17);
history[history_index++] = (int)v18;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
