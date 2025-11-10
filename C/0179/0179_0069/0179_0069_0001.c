#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern double v3 (signed char, float, float);
extern double (*v4) (signed char, float, float);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed int v7 (void);
signed int (*v8) (void) = v7;
signed int v9 (float, unsigned int, signed char, float);
signed int (*v10) (float, unsigned int, signed char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (float v21, unsigned int v22, signed char v23, float v24) {
history[history_index++] = (int)v21;
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
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
