#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed short, signed short);
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (unsigned short, signed short);
extern signed short (*v8) (unsigned short, signed short);
unsigned int v9 (signed char, unsigned char);
unsigned int (*v10) (signed char, unsigned char) = v9;
extern void v11 (signed char, signed short, signed int);
extern void (*v12) (signed char, signed short, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned char, signed int, unsigned short);
extern signed char v17 (unsigned short, signed char, signed int);
extern signed char (*v18) (unsigned short, signed char, signed int);
extern unsigned short v19 (unsigned char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed char, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned short, signed short, signed short, signed char);
extern unsigned int (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned short v27 (signed short, signed int, signed char, signed int);
extern unsigned short (*v28) (signed short, signed int, signed char, signed int);
extern signed int v29 (signed char, unsigned short, unsigned short, signed short);
extern signed int (*v30) (signed char, unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v148 = 7;
unsigned int v147 = 4U;
signed char v146 = -2;

unsigned int v9 (signed char v149, unsigned char v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed int v153 = -1;
signed char v152 = 0;
unsigned int v151 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
