#include <stdlib.h>
extern void v1 (unsigned int, signed char);
extern void (*v2) (unsigned int, signed char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
unsigned char v7 (unsigned int, unsigned char, signed short);
unsigned char (*v8) (unsigned int, unsigned char, signed short) = v7;
extern signed short v9 (signed int, unsigned int, unsigned int, signed int);
extern signed short (*v10) (signed int, unsigned int, unsigned int, signed int);
extern signed short v11 (unsigned char, signed short, unsigned short, signed int);
extern signed short (*v12) (unsigned char, signed short, unsigned short, signed int);
extern unsigned short v13 (unsigned char, unsigned char, signed char);
extern unsigned short (*v14) (unsigned char, unsigned char, signed char);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int);
extern void v19 (signed char, signed char, signed int);
extern void (*v20) (signed char, signed char, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern signed char v27 (signed short, signed short, signed int);
extern signed char (*v28) (signed short, signed short, signed int);
extern signed int v29 (signed int, signed int, unsigned int, signed char);
extern signed int (*v30) (signed int, signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v137 = 0U;
unsigned short v136 = 6;
unsigned short v135 = 3;

unsigned char v7 (unsigned int v138, unsigned char v139, signed short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 5;
unsigned char v142 = 6;
signed int v141 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
