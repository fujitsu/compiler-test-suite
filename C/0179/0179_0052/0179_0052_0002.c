#include <stdlib.h>
extern unsigned char v1 (signed int, double);
extern unsigned char (*v2) (signed int, double);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed short, unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
