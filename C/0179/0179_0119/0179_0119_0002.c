#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern void v5 (unsigned char, unsigned int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, unsigned char);
extern signed char v7 (signed char, signed short, signed char, signed char);
extern signed char (*v8) (signed char, signed short, signed char, signed char);
signed short v9 (signed short, unsigned int);
signed short (*v10) (signed short, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (signed short v19, unsigned int v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
