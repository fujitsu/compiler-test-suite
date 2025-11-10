#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern void v5 (unsigned char, unsigned int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, unsigned char);
extern signed char v7 (signed char, signed short, signed char, signed char);
extern signed char (*v8) (signed char, signed short, signed char, signed char);
extern signed short v9 (signed short, unsigned int);
extern signed short (*v10) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

void v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 0: return;
default: abort ();
}
}
}
