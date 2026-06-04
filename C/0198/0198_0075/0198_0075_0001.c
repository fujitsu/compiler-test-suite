#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (void);
extern signed int (*v2) (void);
struct ss1 v5 (struct ss1, unsigned int, struct ss0, unsigned int);
struct ss1 (*v6) (struct ss1, unsigned int, struct ss0, unsigned int) = v5;
extern struct ss1 v9 (signed char, unsigned char);
extern struct ss1 (*v10) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v19 = -420570612;
struct ss1 v18 = { 18289, 33906726, 13128551U, 343U, };
struct ss0 v17 = { 815901U, 164922U, 4078, };

struct ss1 v5 (struct ss1 v20, unsigned int v21, struct ss0 v22, unsigned int v23)
{
history[history_index++] = (int)v20.f3;
history[history_index++] = (int)v20.f2;
history[history_index++] = (int)v20.f1;
history[history_index++] = (int)v20.f0;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22.f2;
history[history_index++] = (int)v22.f1;
history[history_index++] = (int)v22.f0;
history[history_index++] = (int)v23;
{
for (;;) {
float v26 = -1878889769.25949F;
struct ss1 v25 = { 30458, 64947341, 23254990U, 30U, };
unsigned short v24 = 13858;
trace++;
switch (trace)
{
case 3: 
{
struct ss1 v27;
v27.f3 = v24;
v27.f2 = 65459576;
v27.f1 = 25807729U;
v27.f0 = 29U;
return v27;
}
case 8: 
{
struct ss1 v28;
v28.f3 = 32075;
v28.f2 = 2779829;
v28.f1 = 32273067U;
v28.f0 = 414U;
return v28;
}
default: abort ();
}
}
}
}
