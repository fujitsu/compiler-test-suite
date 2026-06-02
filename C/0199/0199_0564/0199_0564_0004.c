#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned short, signed short, signed int, unsigned char);
extern unsigned int (*v4) (unsigned short, signed short, signed int, unsigned char);
extern unsigned short v7 (signed short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int);
unsigned int v9 (unsigned short, signed char, signed int);
unsigned int (*v10) (unsigned short, signed char, signed int) = v9;
extern signed short v11 (signed char, unsigned short, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned short, unsigned char);
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern signed short v15 (signed char, unsigned int);
extern signed short (*v16) (signed char, unsigned int);
extern void v19 (signed short, signed char, unsigned char);
extern void (*v20) (signed short, signed char, unsigned char);
extern unsigned char v21 (signed char, unsigned int, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned char, signed char);
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
extern unsigned short v25 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned short (*v26) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
extern unsigned char v29 (unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v150 = 2;
unsigned char v149 = 0;
signed short v148 = -1;

unsigned int v9 (unsigned short v151, signed char v152, signed int v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 5U;
signed char v155 = 2;
unsigned int v154 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
