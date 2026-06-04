#include <stdlib.h>
extern signed int v1 (unsigned char, signed int, signed short, unsigned short);
extern signed int (*v2) (unsigned char, signed int, signed short, unsigned short);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed int v5 (unsigned char, unsigned short, unsigned int);
extern signed int (*v6) (unsigned char, unsigned short, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
unsigned char v11 (signed short, unsigned short, unsigned short, signed int);
unsigned char (*v12) (signed short, unsigned short, unsigned short, signed int) = v11;
extern unsigned int v13 (signed char, unsigned short, signed short, unsigned int);
extern unsigned int (*v14) (signed char, unsigned short, signed short, unsigned int);
extern signed short v15 (signed char, unsigned int, signed short);
extern signed short (*v16) (signed char, unsigned int, signed short);
extern signed char v17 (unsigned short, signed short);
extern signed char (*v18) (unsigned short, signed short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern void v23 (signed char, unsigned short, signed short);
extern void (*v24) (signed char, unsigned short, signed short);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern void v27 (unsigned char, unsigned short, unsigned int, unsigned int);
extern void (*v28) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v29 (signed int, signed char, unsigned short);
extern void (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v141 = 3;
signed char v140 = 3;
signed short v139 = -4;

unsigned char v11 (signed short v142, unsigned short v143, unsigned short v144, signed int v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed char v148 = 2;
signed int v147 = -2;
unsigned int v146 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
