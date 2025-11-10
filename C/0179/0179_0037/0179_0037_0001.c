#include <stdlib.h>
extern signed int v1 (signed int, signed char);
extern signed int (*v2) (signed int, signed char);
unsigned int v3 (unsigned int, signed short, signed short, unsigned char);
unsigned int (*v4) (unsigned int, signed short, signed short, unsigned char) = v3;
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
extern signed short v7 (double);
extern signed short (*v8) (double);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (unsigned int v26, signed short v27, signed short v28, unsigned char v29) {
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
default: abort ();
}
}
}
