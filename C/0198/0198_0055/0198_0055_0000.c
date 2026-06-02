#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned short, union uu0, signed int);
extern unsigned int (*v2) (unsigned short, union uu0, signed int);
extern struct ss0 v9 (union uu0, signed char);
extern struct ss0 (*v10) (union uu0, signed char);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 35202, 59437638, 34209248U, 406U, };
struct ss1 v12 = { 33554, 28937934, 65110654U, 456U, };
signed short v11 = -16113;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v16;
union uu0 v17;
signed int v18;
unsigned int v19;
v16 = 20309 - 5872;
v17.f0 = 58;
v18 = -463540296 + -1423773926;
v19 = v1 (v16, v17, v18);
history[history_index++] = (int)v19;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
