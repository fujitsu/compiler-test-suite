#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned int v3 (double);
extern unsigned int (*v4) (double);
extern signed int v5 (signed int, signed int, unsigned char);
extern signed int (*v6) (signed int, signed int, unsigned char);
signed int v7 (signed char, signed int, unsigned short);
signed int (*v8) (signed char, signed int, unsigned short) = v7;
extern signed short v9 (double, unsigned char, signed char);
extern signed short (*v10) (double, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (signed char v25, signed int v26, unsigned short v27) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
