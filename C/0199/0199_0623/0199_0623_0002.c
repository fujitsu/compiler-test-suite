#include <stdlib.h>
extern signed short v1 (signed char, signed short, signed int, unsigned char);
extern signed short (*v2) (signed char, signed short, signed int, unsigned char);
extern unsigned char v3 (unsigned char, unsigned char);
extern unsigned char (*v4) (unsigned char, unsigned char);
extern signed int v5 (signed char, unsigned short);
extern signed int (*v6) (signed char, unsigned short);
signed char v9 (signed short, signed short, signed short, signed short);
signed char (*v10) (signed short, signed short, signed short, signed short) = v9;
extern signed char v11 (unsigned char, signed short, unsigned int);
extern signed char (*v12) (unsigned char, signed short, unsigned int);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned int v15 (unsigned short, unsigned int, signed int, signed short);
extern unsigned int (*v16) (unsigned short, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned int, signed int, unsigned char, signed char);
extern void (*v22) (unsigned int, signed int, unsigned char, signed char);
extern signed int v23 (unsigned short, signed short, unsigned short);
extern signed int (*v24) (unsigned short, signed short, unsigned short);
extern unsigned char v25 (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 1;
signed int v110 = 1;
signed char v109 = -3;

unsigned short v13 (void)
{
{
for (;;) {
unsigned int v114 = 7U;
signed short v113 = -3;
signed int v112 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v115, signed short v116, signed short v117, signed short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 6;
unsigned int v120 = 5U;
unsigned char v119 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
