#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v3 (signed int);
extern void (*v4) (signed int);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern struct ss1 v7 (signed int, unsigned char);
extern struct ss1 (*v8) (signed int, unsigned char);
extern unsigned int v9 (union uu0);
extern unsigned int (*v10) (union uu0);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v43 = { 230575U, 412942U, 48985, };
unsigned int v42 = 2820815970U;
float v41 = -1178906832.47691F;

signed char v5 (void)
{
{
for (;;) {
unsigned char v46 = 120;
union uu0 v45 = {1050483362U };
union uu0 v44 = {1054718330U };
trace++;
switch (trace)
{
case 1: 
return -105;
case 3: 
return 104;
case 5: 
{
signed int v47;
v47 = 806292778 - -1188765087;
(*v4) (v47);
}
break;
case 7: 
{
signed int v48;
v48 = 1519416382 + -24781409;
(*v4) (v48);
}
break;
case 13: 
return -85;
default: abort ();
}
}
}
}
