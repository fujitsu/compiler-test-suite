#include <stdlib.h>
extern float v1 (signed char);
extern float (*v2) (signed char);
extern signed char v3 (double, float);
extern signed char (*v4) (double, float);
void v5 (signed char);
void (*v6) (signed char) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned short, signed char);
extern unsigned int (*v10) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;

void v5 (signed char v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
