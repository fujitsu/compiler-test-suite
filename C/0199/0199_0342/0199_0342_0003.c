#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
unsigned char v7 (signed short, signed short);
unsigned char (*v8) (signed short, signed short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed int, signed short, unsigned char);
extern signed int (*v12) (signed int, signed short, unsigned char);
signed char v13 (signed char, signed char, signed short, signed char);
signed char (*v14) (signed char, signed char, signed short, signed char) = v13;
extern signed char v15 (signed int, unsigned char, signed char, signed short);
extern signed char (*v16) (signed int, unsigned char, signed char, signed short);
extern void v17 (unsigned short, unsigned short, unsigned char);
extern void (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned char);
extern void (*v28) (unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned char, unsigned char, signed char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = -3;
signed int v113 = 2;
signed short v112 = 0;

signed char v13 (signed char v115, signed char v116, signed short v117, signed char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 7U;
unsigned short v120 = 6;
unsigned char v119 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 3;
unsigned int v125 = 1U;
signed int v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
