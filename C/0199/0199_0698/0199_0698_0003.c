#include <stdlib.h>
extern unsigned short v1 (unsigned short);
extern unsigned short (*v2) (unsigned short);
extern signed char v3 (signed short, unsigned char, signed int, signed int);
extern signed char (*v4) (signed short, unsigned char, signed int, signed int);
extern unsigned short v5 (unsigned char, signed char, signed short);
extern unsigned short (*v6) (unsigned char, signed char, signed short);
extern void v7 (signed char, signed char, unsigned int);
extern void (*v8) (signed char, signed char, unsigned int);
extern unsigned short v9 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned char, unsigned int);
signed char v11 (signed char, signed char, unsigned int, signed int);
signed char (*v12) (signed char, signed char, unsigned int, signed int) = v11;
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed int, unsigned char);
extern signed short (*v18) (signed int, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned short v23 (unsigned char, signed char, unsigned int);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = -1;
signed char v120 = 3;
unsigned char v119 = 4;

signed char v11 (signed char v122, signed char v123, unsigned int v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -1;
unsigned short v127 = 6;
signed int v126 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
