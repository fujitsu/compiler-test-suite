#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern float v5 (unsigned short, unsigned short, signed short, unsigned char);
extern float (*v6) (unsigned short, unsigned short, signed short, unsigned char);
unsigned char v7 (double, float, signed short);
unsigned char (*v8) (double, float, signed short) = v7;
extern signed int v9 (signed short, signed short, unsigned short);
extern signed int (*v10) (signed short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (double v43, float v44, signed short v45) {
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
for (;;) {
trace++;
switch (trace) {
case 7: return 'A';
case 1: return 'A';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 'A';
case 4: 
{
signed int v46;
v46 = (*v2) ();
history[history_index++] = (int)v46;
return 'A';
}
break;
default: abort ();
}
}
}
