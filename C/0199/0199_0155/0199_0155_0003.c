#include <stdlib.h>
extern unsigned char v1 (signed short, signed char);
extern unsigned char (*v2) (signed short, signed char);
extern signed short v3 (signed char, signed int, unsigned char, signed char);
extern signed short (*v4) (signed char, signed int, unsigned char, signed char);
void v5 (unsigned char, unsigned int);
void (*v6) (unsigned char, unsigned int) = v5;
extern unsigned short v7 (signed char, signed int, signed char, signed int);
extern unsigned short (*v8) (signed char, signed int, signed char, signed int);
extern signed char v9 (unsigned short, unsigned char, signed int);
extern signed char (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed int, unsigned char);
extern signed int (*v12) (unsigned short, signed int, unsigned char);
extern void v13 (signed int, signed int, unsigned int);
extern void (*v14) (signed int, signed int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (signed int, signed int, signed char, unsigned short);
extern signed short (*v18) (signed int, signed int, signed char, unsigned short);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (signed int, unsigned short, unsigned short, signed char);
extern unsigned char (*v24) (signed int, unsigned short, unsigned short, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
extern signed short v29 (signed char, unsigned char, signed short, signed short);
extern signed short (*v30) (signed char, unsigned char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v116 = 6U;
signed short v115 = -2;
unsigned short v114 = 1;

void v5 (unsigned char v117, unsigned int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 1;
signed char v120 = -2;
unsigned char v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
