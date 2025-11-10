#include <stdlib.h>
unsigned short v1 (signed char, double, float);
unsigned short (*v2) (signed char, double, float) = v1;
unsigned int v3 (unsigned int, double, signed char, float);
unsigned int (*v4) (unsigned int, double, signed char, float) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
extern double v7 (double, double, unsigned int);
extern double (*v8) (double, double, unsigned int);
signed int v9 (signed char, unsigned int);
signed int (*v10) (signed char, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (signed char v15, unsigned int v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
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

signed short v5 (void) {
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

unsigned int v3 (unsigned int v17, double v18, signed char v19, float v20) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
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

unsigned short v1 (signed char v21, double v22, float v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 0: return 111;
default: abort ();
}
}
}
