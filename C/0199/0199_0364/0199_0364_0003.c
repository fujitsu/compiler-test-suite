#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern void v5 (signed int, unsigned char, unsigned char);
extern void (*v6) (signed int, unsigned char, unsigned char);
extern unsigned short v7 (unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, signed char);
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
unsigned char v21 (unsigned char, signed int, unsigned int, unsigned short);
unsigned char (*v22) (unsigned char, signed int, unsigned int, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = 2;
unsigned int v113 = 5U;
signed short v112 = 3;

unsigned char v21 (unsigned char v115, signed int v116, unsigned int v117, unsigned short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 1;
unsigned short v120 = 7;
signed short v119 = 0;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed char v124 = -4;
unsigned short v123 = 5;
signed short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
