#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern float v3 (unsigned short);
extern float (*v4) (unsigned short);
extern double v5 (float);
extern double (*v6) (float);
extern signed int v7 (float);
extern signed int (*v8) (float);
extern unsigned int v9 (signed int, signed short, unsigned int);
extern unsigned int (*v10) (signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 20: return -199999;
case 0: 
{
float v44;
double v45;
v44=1.234;
v45 = (*v6) (v44);
history[history_index++] = (int)v45;
return -199999;
}
break;
default: abort ();
}
}
}
