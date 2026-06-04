#include <stdlib.h>
extern signed char v1 (signed short, signed char, unsigned short, signed short);
extern signed char (*v2) (signed short, signed char, unsigned short, signed short);
extern signed int v3 (signed int, signed short);
extern signed int (*v4) (signed int, signed short);
extern signed short v5 (unsigned int, signed int, signed char, unsigned int);
extern signed short (*v6) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, signed char);
extern unsigned char (*v8) (unsigned char, signed int, signed char);
extern unsigned int v9 (signed int, signed int);
extern unsigned int (*v10) (signed int, signed int);
extern unsigned int v11 (unsigned short, signed short);
extern unsigned int (*v12) (unsigned short, signed short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed int v15 (unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, signed int, signed int);
extern signed short v17 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned char, unsigned int, unsigned char);
extern void v19 (signed char, signed char, unsigned int, signed int);
extern void (*v20) (signed char, signed char, unsigned int, signed int);
extern signed char v21 (signed int, signed int, signed int, signed short);
extern signed char (*v22) (signed int, signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, unsigned short);
extern void (*v24) (unsigned short, signed short, unsigned short);
extern unsigned char v25 (signed int, signed short, signed char, signed char);
extern unsigned char (*v26) (signed int, signed short, signed char, signed char);
extern unsigned short v27 (signed short, signed int, signed char);
extern unsigned short (*v28) (signed short, signed int, signed char);
void v29 (signed short, signed int, unsigned char);
void (*v30) (signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v123 = 7;
unsigned short v122 = 5;
signed int v121 = 3;

void v29 (signed short v124, signed int v125, unsigned char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 3U;
signed int v128 = -1;
signed int v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
