#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern void v5 (unsigned int, signed short, signed short, unsigned short);
extern void (*v6) (unsigned int, signed short, signed short, unsigned short);
extern unsigned int v7 (unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed int);
extern signed short v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v11 (unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed int, unsigned int, signed char, unsigned short);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned short);
extern signed short v15 (signed short, signed int, unsigned int, signed short);
extern signed short (*v16) (signed short, signed int, unsigned int, signed short);
unsigned char v17 (unsigned short, signed int, unsigned short, signed short);
unsigned char (*v18) (unsigned short, signed int, unsigned short, signed short) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed short, signed short, unsigned int);
extern unsigned char (*v28) (unsigned int, signed short, signed short, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = -2;
unsigned int v118 = 2U;
unsigned short v117 = 5;

unsigned char v17 (unsigned short v120, signed int v121, unsigned short v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 6U;
signed char v125 = -3;
signed int v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
