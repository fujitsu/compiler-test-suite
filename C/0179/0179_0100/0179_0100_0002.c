#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern double v3 (void);
extern double (*v4) (void);
extern float v5 (unsigned int, double);
extern float (*v6) (unsigned int, double);
extern signed short v7 (unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, unsigned int);
extern float v9 (signed short, signed int);
extern float (*v10) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 0: 
{
signed short v32;
signed int v33;
float v34;
v32=-111;
v33=-199999;
v34 = (*v10) (v32, v33);
history[history_index++] = (int)v34;
return -199999;
}
break;
default: abort ();
}
}
}
