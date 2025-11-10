#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned int v5 (signed char, signed char);
unsigned int (*v6) (signed char, signed char) = v5;
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (signed char v20, signed char v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
