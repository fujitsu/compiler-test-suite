#include <stdlib.h>
extern signed int v1 (signed int, unsigned char, double);
extern signed int (*v2) (signed int, unsigned char, double);
extern void v3 (unsigned short, signed short, float);
extern void (*v4) (unsigned short, signed short, float);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned char v9 (unsigned char, signed char, double);
unsigned char (*v10) (unsigned char, signed char, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (unsigned char v24, signed char v25, double v26) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
