#include <stdlib.h>
extern signed char v1 (signed char, signed short, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed short, unsigned int, unsigned char);
unsigned int v3 (signed short, unsigned int);
unsigned int (*v4) (signed short, unsigned int) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (signed int, unsigned char);
extern unsigned char (*v8) (signed int, unsigned char);
extern signed short v9 (unsigned int, unsigned char, signed char);
extern signed short (*v10) (unsigned int, unsigned char, signed char);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern unsigned int v15 (unsigned int, signed char, signed int, unsigned int);
extern unsigned int (*v16) (unsigned int, signed char, signed int, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (unsigned char, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short);
extern signed short v23 (unsigned int, unsigned int, signed short, unsigned short);
extern signed short (*v24) (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 2;
signed int v119 = -4;
signed short v118 = -2;

unsigned int v3 (signed short v121, unsigned int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
signed short v124 = 1;
unsigned char v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
