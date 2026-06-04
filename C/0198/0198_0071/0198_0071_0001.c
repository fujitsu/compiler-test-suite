#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (union uu0, struct ss0);
signed short (*v2) (union uu0, struct ss0) = v1;
static unsigned int v3 (unsigned int);
static unsigned int (*v4) (unsigned int) = v3;
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
static unsigned int v9 (void);
static unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu0 v21 = {3721116861U };
signed short v20 = 27400;
unsigned int v19 = 1432955431U;

static unsigned int v9 (void)
{
{
for (;;) {
signed short v24 = 9472;
signed int v23 = 1906161959;
signed int v22 = 1444998498;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v25;
unsigned int v26;
v25 = 28417393U - 2765526726U;
v26 = (*v4) (v25);
history[history_index++] = (int)v26;
}
break;
case 3: 
{
unsigned int v27;
unsigned int v28;
v27 = 92398494U - 1373236545U;
v28 = (*v4) (v27);
history[history_index++] = (int)v28;
}
break;
case 15: 
return 3465916929U;
default: abort ();
}
}
}
}

static unsigned int v3 (unsigned int v29)
{
history[history_index++] = (int)v29;
{
for (;;) {
union uu0 v32 = {1110150198U };
signed short v31 = -8105;
signed short v30 = 10961;
trace++;
switch (trace)
{
case 2: 
return v29;
case 4: 
{
struct ss0 v33;
v33 = (*v6) ();
history[history_index++] = (int)v33.f2;
history[history_index++] = (int)v33.f1;
history[history_index++] = (int)v33.f0;
}
break;
case 14: 
return v29;
default: abort ();
}
}
}
}

signed short v1 (union uu0 v34, struct ss0 v35)
{
history[history_index++] = (int)v34.f3;
history[history_index++] = (int)v35.f2;
history[history_index++] = (int)v35.f1;
history[history_index++] = (int)v35.f0;
{
for (;;) {
signed short v38 = 23966;
signed char v37 = -56;
union uu1 v36 = {-341561564 };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v39;
v39 = (*v10) ();
history[history_index++] = (int)v39;
}
break;
case 16: 
return v38;
default: abort ();
}
}
}
}
