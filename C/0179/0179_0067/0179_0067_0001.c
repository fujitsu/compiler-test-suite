#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (unsigned int, float);
extern signed char (*v4) (unsigned int, float);
unsigned char v5 (unsigned char, double);
unsigned char (*v6) (unsigned char, double) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (signed int, double, unsigned char);
extern void (*v10) (signed int, double, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v5 (unsigned char v16, double v17) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
