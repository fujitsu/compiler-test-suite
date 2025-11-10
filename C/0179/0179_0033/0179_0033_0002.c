#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
signed short v3 (double);
signed short (*v4) (double) = v3;
extern double v5 (signed char, double, signed short, unsigned short);
extern double (*v6) (signed char, double, signed short, unsigned short);
extern float v7 (void);
extern float (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (double v18) {
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
