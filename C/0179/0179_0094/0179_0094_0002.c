#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern double v3 (unsigned char, signed char, signed char, signed short);
extern double (*v4) (unsigned char, signed char, signed char, signed short);
extern float v5 (signed int, signed short, unsigned short);
extern float (*v6) (signed int, signed short, unsigned short);
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 0: return 199999;
default: abort ();
}
}
}
