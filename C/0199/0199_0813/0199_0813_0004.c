#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed char);
extern unsigned int (*v2) (unsigned char, unsigned short, signed char);
extern unsigned char v3 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed int, unsigned short, unsigned char, unsigned int);
unsigned short v5 (signed int, signed char, signed int, signed int);
unsigned short (*v6) (signed int, signed char, signed int, signed int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned int, signed int);
extern unsigned short (*v16) (signed char, unsigned int, signed int);
extern unsigned short v19 (unsigned short, signed int, unsigned short);
extern unsigned short (*v20) (unsigned short, signed int, unsigned short);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern void v25 (unsigned short, unsigned short, signed short, unsigned short);
extern void (*v26) (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned int v27 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int v29 (unsigned char, signed int, signed short, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v151 = -4;
unsigned int v150 = 6U;
unsigned char v149 = 1;

unsigned short v5 (signed int v152, signed char v153, signed int v154, signed int v155)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
unsigned short v158 = 3;
signed short v157 = -3;
unsigned char v156 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
