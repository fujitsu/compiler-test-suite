#include <stdlib.h>
extern void v1 (unsigned short, signed short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed short, signed char, unsigned short);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int, signed int, signed char, unsigned short);
extern unsigned char (*v6) (signed int, signed int, signed char, unsigned short);
unsigned char v7 (signed short, signed char);
unsigned char (*v8) (signed short, signed char) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, unsigned int, signed short);
extern void (*v12) (signed char, unsigned int, signed short);
extern unsigned char v13 (signed int, unsigned short);
extern unsigned char (*v14) (signed int, unsigned short);
signed short v15 (unsigned int, unsigned short);
signed short (*v16) (unsigned int, unsigned short) = v15;
extern signed int v17 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v18) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern void v23 (unsigned int, unsigned int, unsigned short, unsigned int);
extern void (*v24) (unsigned int, unsigned int, unsigned short, unsigned int);
extern void v25 (signed int, signed int, signed int, unsigned char);
extern void (*v26) (signed int, signed int, signed int, unsigned char);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 7;
unsigned char v115 = 2;
signed short v114 = -3;

signed short v15 (unsigned int v117, unsigned short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 3;
unsigned short v120 = 6;
signed int v119 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v122, signed char v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 1;
unsigned int v125 = 1U;
signed int v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
