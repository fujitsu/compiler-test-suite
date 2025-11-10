#include <stdlib.h>
signed char v1 (signed short, double, signed char);
signed char (*v2) (signed short, double, signed char) = v1;
extern unsigned short v3 (double, unsigned char);
extern unsigned short (*v4) (double, unsigned char);
extern void v5 (unsigned short, unsigned char, signed int, double);
extern void (*v6) (unsigned short, unsigned char, signed int, double);
signed int v7 (signed short);
signed int (*v8) (signed short) = v7;
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (signed short v22) {
history[history_index++] = (int)v22;
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

signed char v1 (signed short v23, double v24, signed char v25) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
case 0: return 'a';
default: abort ();
}
}
}
