#include <stdlib.h>
extern float v1 (signed char);
extern float (*v2) (signed char);
signed char v3 (double, float);
signed char (*v4) (double, float) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
extern void v7 (void);
extern void (*v8) (void);
unsigned int v9 (unsigned short, signed char);
unsigned int (*v10) (unsigned short, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned short v15, signed char v16) {
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

signed char v3 (double v17, float v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
