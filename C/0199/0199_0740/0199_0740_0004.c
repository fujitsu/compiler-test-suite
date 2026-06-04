#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (unsigned char, signed int, unsigned short, signed int);
extern void (*v6) (unsigned char, signed int, unsigned short, signed int);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed int v13 (unsigned int, signed int, unsigned int);
extern signed int (*v14) (unsigned int, signed int, unsigned int);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed char);
extern unsigned char (*v18) (signed char, unsigned short, signed char);
extern signed int v19 (unsigned int, unsigned char, unsigned char);
extern signed int (*v20) (unsigned int, unsigned char, unsigned char);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
signed short v23 (unsigned int, unsigned short, unsigned int);
signed short (*v24) (unsigned int, unsigned short, unsigned int) = v23;
extern signed short v27 (unsigned short, unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned short, unsigned char, signed char);
extern signed char v29 (unsigned int, signed short, signed int);
extern signed char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v155 = 6;
unsigned int v154 = 1U;
signed char v153 = 1;

signed short v23 (unsigned int v156, unsigned short v157, unsigned int v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
signed char v161 = -1;
unsigned short v160 = 2;
unsigned int v159 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
