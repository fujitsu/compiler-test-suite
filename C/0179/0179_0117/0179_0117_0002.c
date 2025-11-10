#include <stdlib.h>
extern signed char v1 (signed char, float);
extern signed char (*v2) (signed char, float);
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (unsigned short);
signed int (*v6) (unsigned short) = v5;
extern void v7 (double, unsigned short);
extern void (*v8) (double, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (unsigned short v18) {
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
