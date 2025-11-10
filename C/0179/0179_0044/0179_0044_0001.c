#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
void v7 (signed short, unsigned short, signed short);
void (*v8) (signed short, unsigned short, signed short) = v7;
extern unsigned int v9 (float);
extern unsigned int (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

void v7 (signed short v16, unsigned short v17, signed short v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 7: return;
default: abort ();
}
}
}
