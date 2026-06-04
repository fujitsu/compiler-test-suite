#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern signed short v17 (signed char, signed short, signed char, unsigned int);
extern signed short (*v18) (signed char, signed short, signed char, unsigned int);
unsigned short v19 (unsigned int, signed short);
unsigned short (*v20) (unsigned int, signed short) = v19;
extern unsigned int v21 (unsigned int, unsigned char, signed int);
extern unsigned int (*v22) (unsigned int, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed char v27 (signed int, signed int);
signed char (*v28) (signed int, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v113 = 5U;
unsigned char v112 = 3;
signed short v111 = -2;

signed char v27 (signed int v114, signed int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -4;
unsigned int v117 = 2U;
unsigned short v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -2;
signed int v122 = 1;
unsigned char v121 = 6;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}
