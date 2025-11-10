#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, double);
extern unsigned short (*v2) (unsigned short, signed char, double);
extern signed char v3 (unsigned short, double, signed int, signed short);
extern signed char (*v4) (unsigned short, double, signed int, signed short);
extern double v5 (void);
extern double (*v6) (void);
extern double v7 (unsigned short, double);
extern double (*v8) (unsigned short, double);
double v9 (unsigned char, float, signed char);
double (*v10) (unsigned char, float, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (unsigned char v48, float v49, signed char v50) {
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
for (;;) {
trace++;
switch (trace) {
case 14: return 111111.2222222;
case 4: 
{
unsigned short v51;
signed char v52;
double v53;
unsigned short v54;
v51=111;
v52='a';
v53=111111.2222222;
v54 = (*v2) (v51, v52, v53);
history[history_index++] = (int)v54;
return 111111.2222222;
}
break;
case 1: return 111111.2222222;
default: abort ();
}
}
}
