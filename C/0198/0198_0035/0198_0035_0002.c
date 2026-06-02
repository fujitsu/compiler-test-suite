#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (union uu1);
extern signed short (*v6) (union uu1);
float v9 (signed short, signed short, unsigned short);
float (*v10) (signed short, signed short, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v55 = -4104722901452440053.54770;
double v54 = 4457514509892791787.6246;
struct ss1 v53 = { 45541, 26026957, 55318736U, 240U, };

float v9 (signed short v56, signed short v57, unsigned short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 42921;
struct ss0 v60 = { 708757U, 300954U, 42527, };
float v59 = -1282906226.51307F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
