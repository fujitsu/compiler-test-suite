#include <stdlib.h>
extern float v1 (signed short, signed char);
extern float (*v2) (signed short, signed char);
extern signed char v3 (unsigned short, signed short, unsigned char);
extern signed char (*v4) (unsigned short, signed short, unsigned char);
extern unsigned short v5 (signed char, unsigned short);
extern unsigned short (*v6) (signed char, unsigned short);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
