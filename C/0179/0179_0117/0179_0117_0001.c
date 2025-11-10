#include <stdlib.h>
extern signed char v1 (signed char, float);
extern signed char (*v2) (signed char, float);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern void v7 (double, unsigned short);
extern void (*v8) (double, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed char v3 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
