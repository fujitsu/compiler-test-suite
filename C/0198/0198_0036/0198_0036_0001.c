#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (unsigned char);
extern unsigned short (*v2) (unsigned char);
unsigned short v5 (signed short, unsigned int, struct ss0);
unsigned short (*v6) (signed short, unsigned int, struct ss0) = v5;
extern double v7 (signed char, union uu1, float, struct ss1);
extern double (*v8) (signed char, union uu1, float, struct ss1);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v35 = {545359095 };
signed char v34 = -68;
unsigned short v33 = 21416;

unsigned short v5 (signed short v36, unsigned int v37, struct ss0 v38)
{
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
{
for (;;) {
unsigned char v41 = 58;
signed int v40 = -335792478;
unsigned char v39 = 63;
trace++;
switch (trace)
{
case 5: 
return 46344;
case 7: 
return 54126;
case 9: 
return 51638;
default: abort ();
}
}
}
}
