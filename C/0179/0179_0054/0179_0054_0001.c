#include <stdlib.h>
float v1 (signed short, signed char);
float (*v2) (signed short, signed char) = v1;
extern signed char v3 (unsigned short, signed short, unsigned char);
extern signed char (*v4) (unsigned short, signed short, unsigned char);
extern unsigned short v5 (signed char, unsigned short);
extern unsigned short (*v6) (signed char, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

float v1 (signed short v48, signed char v49) {
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
for (;;) {
trace++;
switch (trace) {
case 18: return 1.234;
case 0: 
{
unsigned short v50;
signed short v51;
unsigned char v52;
signed char v53;
v50=111;
v51=-111;
v52='A';
v53 = v3 (v50, v51, v52);
history[history_index++] = (int)v53;
return 1.234;
}
break;
default: abort ();
}
}
}
