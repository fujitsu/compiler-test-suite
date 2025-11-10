#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned int v3 (double);
extern unsigned int (*v4) (double);
extern signed int v5 (signed int, signed int, unsigned char);
extern signed int (*v6) (signed int, signed int, unsigned char);
extern signed int v7 (signed char, signed int, unsigned short);
extern signed int (*v8) (signed char, signed int, unsigned short);
signed short v9 (double, unsigned char, signed char);
signed short (*v10) (double, unsigned char, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (double v22, unsigned char v23, signed char v24) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
