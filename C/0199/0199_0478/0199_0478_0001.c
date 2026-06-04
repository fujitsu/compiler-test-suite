#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned int, signed short);
extern unsigned int v3 (unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed short, unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
signed int v9 (unsigned int, signed char, signed int);
signed int (*v10) (unsigned int, signed char, signed int) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned short);
extern signed short (*v18) (unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern signed int v25 (signed short, signed char, signed char);
extern signed int (*v26) (signed short, signed char, signed char);
extern signed short v27 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v28) (signed int, unsigned char, unsigned char, signed int);
extern void v29 (signed short, unsigned short, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = 0;
unsigned char v78 = 7;
unsigned char v77 = 7;

signed int v9 (unsigned int v80, signed char v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 2U;
signed char v84 = -2;
signed char v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
