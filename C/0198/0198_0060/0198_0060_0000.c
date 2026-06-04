#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (signed int, unsigned short, signed char);
extern signed int (*v2) (signed int, unsigned short, signed char);
extern struct ss1 v3 (union uu1, signed char);
extern struct ss1 (*v4) (union uu1, signed char);
extern void v7 (struct ss1, struct ss0, unsigned int);
extern void (*v8) (struct ss1, struct ss0, unsigned int);
extern signed int v9 (unsigned int, struct ss0, signed char);
extern signed int (*v10) (unsigned int, struct ss0, signed char);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 1277, 8304713, 46996599U, 219U, };
signed char v12 = -56;
signed int v11 = 605992152;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v16;
unsigned short v17;
signed char v18;
signed int v19;
v16 = v11 - 1643583287;
v17 = 48268 + 1768;
v18 = -10 + v12;
v19 = (*v2) (v16, v17, v18);
history[history_index++] = (int)v19;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
