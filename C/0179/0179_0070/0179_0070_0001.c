#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern float v3 (unsigned int);
extern float (*v4) (unsigned int);
extern unsigned int v5 (unsigned int, signed int, double);
extern unsigned int (*v6) (unsigned int, signed int, double);
extern signed char v7 (void);
extern signed char (*v8) (void);
float v9 (unsigned int);
float (*v10) (unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (unsigned int v24) {
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
case 8: return 1.234;
default: abort ();
}
}
}
