#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned int v5 (float, signed int, float);
unsigned int (*v6) (float, signed int, float) = v5;
extern float v7 (signed int, double, float, unsigned char);
extern float (*v8) (signed int, double, float, unsigned char);
extern unsigned short v9 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v10) (signed char, signed short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (float v12, signed int v13, float v14) {
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 3: return 199999;
default: abort ();
}
}
}
