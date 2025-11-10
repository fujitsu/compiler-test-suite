#include <stdlib.h>
extern double v1 (unsigned char);
extern double (*v2) (unsigned char);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
extern signed short v7 (double, double, signed short);
extern signed short (*v8) (double, double, signed short);
extern signed int v9 (float, signed int, float);
extern signed int (*v10) (float, signed int, float);
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 10: 
{
double v24;
double v25;
signed short v26;
signed short v27;
v24=111111.2222222;
v25=111111.2222222;
v26=-111;
v27 = v7 (v24, v25, v26);
history[history_index++] = (int)v27;
return -111;
}
break;
default: abort ();
}
}
}
