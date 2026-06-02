#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (void);
extern void (*v2) (void);
void v9 (struct ss0, struct ss0, signed int, unsigned char);
void (*v10) (struct ss0, struct ss0, signed int, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v18 = { 54179, 62840266, 66618879U, 431U, };
signed short v17 = 8546;
union uu0 v16 = {1651354754U };

void v9 (struct ss0 v19, struct ss0 v20, signed int v21, unsigned char v22)
{
history[history_index++] = (int)v19.f2;
history[history_index++] = (int)v19.f1;
history[history_index++] = (int)v19.f0;
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
{
for (;;) {
unsigned short v25 = 56150;
struct ss0 v24 = { 1036357U, 324331U, 16937, };
unsigned char v23 = 183;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
