#include <stdlib.h>
extern signed short v1 (signed int, double, signed char, unsigned short);
extern signed short (*v2) (signed int, double, signed char, unsigned short);
unsigned short v3 (signed char, float, signed short);
unsigned short (*v4) (signed char, float, signed short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
float v7 (unsigned int, signed short);
float (*v8) (unsigned int, signed short) = v7;
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;

float v7 (unsigned int v20, signed short v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (signed char v22, float v23, signed short v24) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
case 8: return 111;
case 4: return 111;
default: abort ();
}
}
}
