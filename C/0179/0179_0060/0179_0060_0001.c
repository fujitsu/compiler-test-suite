#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
extern double v3 (void);
extern double (*v4) (void);
extern unsigned short v5 (float, unsigned int);
extern unsigned short (*v6) (float, unsigned int);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (signed short, signed char);
extern signed short (*v10) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
