#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char, unsigned char);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (signed char, signed char);
extern unsigned int (*v8) (signed char, signed char);
extern unsigned char v9 (signed short, unsigned short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned short, unsigned int);
extern signed int v13 (signed short, unsigned short);
extern signed int (*v14) (signed short, unsigned short);
void v15 (signed int, signed short, signed int);
void (*v16) (signed int, signed short, signed int) = v15;
extern signed char v17 (unsigned int, signed char, unsigned int, signed int);
extern signed char (*v18) (unsigned int, signed char, unsigned int, signed int);
extern signed short v19 (signed char, unsigned short, signed char);
extern signed short (*v20) (signed char, unsigned short, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern void v27 (unsigned char, signed short, unsigned int, signed short);
extern void (*v28) (unsigned char, signed short, unsigned int, signed short);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 4U;
unsigned char v82 = 7;
signed int v81 = 0;

void v15 (signed int v84, signed short v85, signed int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 1;
signed short v88 = -1;
signed short v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
