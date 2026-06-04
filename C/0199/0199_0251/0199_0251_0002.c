#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned short, signed char);
extern void v3 (unsigned char, unsigned char, signed char, unsigned int);
extern void (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (signed int, signed char, unsigned char);
extern void (*v8) (signed int, signed char, unsigned char);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern unsigned short v11 (unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int);
signed short v13 (signed short);
signed short (*v14) (signed short) = v13;
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (signed char, signed char, signed short);
extern unsigned char (*v22) (signed char, signed char, signed short);
extern unsigned char v23 (unsigned char, unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v27 (signed int, unsigned int, signed int);
extern signed char (*v28) (signed int, unsigned int, signed int);
extern signed char v29 (unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -4;
unsigned int v79 = 3U;
unsigned char v78 = 3;

signed short v13 (signed short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 3;
signed char v83 = -3;
unsigned int v82 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
