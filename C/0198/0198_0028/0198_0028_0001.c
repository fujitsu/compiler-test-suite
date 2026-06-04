#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (float, signed char);
extern unsigned int (*v6) (float, signed char);
extern unsigned char v9 (unsigned int, union uu0);
extern unsigned char (*v10) (unsigned int, union uu0);
extern int history[];
extern int history_index;
extern int trace;
float v62 = -1673879200.55829F;
struct ss1 v61 = { 63602, 36720138, 8388297U, 47U, };
double v60 = 5875194151701407879.56839;

unsigned char v3 (void)
{
{
for (;;) {
signed int v65 = -550834135;
unsigned short v64 = 64954;
unsigned char v63 = 98;
trace++;
switch (trace)
{
case 6: 
{
float v66;
signed char v67;
unsigned int v68;
v66 = 409822045.44450F;
v67 = 81 - 121;
v68 = v5 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return v63;
default: abort ();
}
}
}
}
