#include <stdlib.h>
extern unsigned short v1 (float, unsigned short, signed char);
extern unsigned short (*v2) (float, unsigned short, signed char);
extern unsigned short v3 (signed int, float, signed char);
extern unsigned short (*v4) (signed int, float, signed char);
signed char v5 (void);
signed char (*v6) (void) = v5;
double v7 (double);
double (*v8) (double) = v7;
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (void) {
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

double v7 (double v25) {
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
case 3: return 111111.2222222;
case 1: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
