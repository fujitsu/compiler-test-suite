#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (unsigned short, signed char, signed char, float);
extern unsigned int (*v4) (unsigned short, signed char, signed char, float);
signed char v5 (double, unsigned short);
signed char (*v6) (double, unsigned short) = v5;
extern unsigned short v7 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short (*v8) (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned int v9 (float, double, float, float);
extern unsigned int (*v10) (float, double, float, float);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (double v43, unsigned short v44) {
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
for (;;) {
trace++;
switch (trace) {
case 7: return 'a';
case 5: return 'a';
default: abort ();
}
}
}
