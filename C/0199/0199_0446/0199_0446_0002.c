#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned int);
extern unsigned char (*v2) (unsigned char, signed int, unsigned int);
extern signed char v3 (signed int, unsigned short, signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned short, signed int, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
void v7 (signed char, unsigned char, signed int, unsigned short);
void (*v8) (signed char, unsigned char, signed int, unsigned short) = v7;
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed short, unsigned char, signed int);
extern signed int (*v16) (signed short, unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern void v21 (unsigned short, unsigned short, signed int);
extern void (*v22) (unsigned short, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed int, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = -2;
signed int v83 = -4;
signed char v82 = 0;

void v7 (signed char v85, unsigned char v86, signed int v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
signed short v90 = 3;
signed short v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
