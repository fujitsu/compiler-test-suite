#include <stdlib.h>
extern unsigned short v1 (double, signed int);
extern unsigned short (*v2) (double, signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned short v7 (unsigned int, signed int, unsigned short);
unsigned short (*v8) (unsigned int, signed int, unsigned short) = v7;
extern unsigned char v9 (signed short, unsigned short, double);
extern unsigned char (*v10) (signed short, unsigned short, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (unsigned int v27, signed int v28, unsigned short v29) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 14: return 111;
case 11: return 111;
case 5: 
{
unsigned int v30;
v30 = (*v4) ();
history[history_index++] = (int)v30;
return 111;
}
break;
case 2: 
{
double v31;
signed int v32;
unsigned short v33;
v31=111111.2222222;
v32=-199999;
v33 = (*v2) (v31, v32);
history[history_index++] = (int)v33;
return 111;
}
break;
default: abort ();
}
}
}
