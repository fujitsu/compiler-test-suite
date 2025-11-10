#include <stdlib.h>
extern float v1 (signed short, unsigned short);
extern float (*v2) (signed short, unsigned short);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (signed short, unsigned int);
signed short (*v6) (signed short, unsigned int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 2: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (signed short v17, unsigned int v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
