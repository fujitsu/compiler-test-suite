#include <stdlib.h>
extern double v1 (double, signed short, unsigned char);
extern double (*v2) (double, signed short, unsigned char);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed short, unsigned int);
extern signed int (*v6) (signed short, unsigned int);
signed char v7 (signed int, signed short, float);
signed char (*v8) (signed int, signed short, float) = v7;
signed short v9 (unsigned int, signed int);
signed short (*v10) (unsigned int, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (unsigned int v39, signed int v40) {
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
for (;;) {
trace++;
switch (trace) {
case 8: return -111;
case 6: return -111;
case 4: return -111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (signed int v41, signed short v42, float v43) {
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
