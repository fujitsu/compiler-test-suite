#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern float v3 (unsigned short);
extern float (*v4) (unsigned short);
extern double v5 (float);
extern double (*v6) (float);
signed int v7 (float);
signed int (*v8) (float) = v7;
extern unsigned int v9 (signed int, signed short, unsigned int);
extern unsigned int (*v10) (signed int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (float v43) {
history[history_index++] = (int)v43;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
