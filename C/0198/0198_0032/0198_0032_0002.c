#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern struct ss0 v5 (signed int, unsigned short, unsigned short);
extern struct ss0 (*v6) (signed int, unsigned short, unsigned short);
extern union uu0 v7 (double);
extern union uu0 (*v8) (double);
extern union uu1 v9 (union uu0);
extern union uu1 (*v10) (union uu0);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v67 = { 13636, 25868850, 57095093U, 46U, };
unsigned short v66 = 1722;
union uu1 v65 = {1224397331 };

unsigned short v1 (void)
{
{
for (;;) {
signed int v70 = -1597149265;
float v69 = 664856216.58099F;
signed short v68 = -832;
trace++;
switch (trace)
{
case 0: 
{
signed int v71;
unsigned short v72;
unsigned short v73;
struct ss0 v74;
v71 = -1126377110 + 1614760967;
v72 = 26235 - 29609;
v73 = 60821 + 50433;
v74 = v5 (v71, v72, v73);
history[history_index++] = (int)v74.f2;
history[history_index++] = (int)v74.f1;
history[history_index++] = (int)v74.f0;
}
break;
case 16: 
return 56088;
default: abort ();
}
}
}
}
