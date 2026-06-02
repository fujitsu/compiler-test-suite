#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v7 (signed int, signed char, signed short);
unsigned int (*v8) (signed int, signed char, signed short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (unsigned char, unsigned char, signed char);
extern signed char v19 (signed short, unsigned short, unsigned short);
extern signed char (*v20) (signed short, unsigned short, unsigned short);
extern unsigned int v21 (signed short, unsigned int, signed char);
extern unsigned int (*v22) (signed short, unsigned int, signed char);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern unsigned char v25 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short, signed char, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v134 = 3;
unsigned int v133 = 2U;
unsigned char v132 = 3;

unsigned int v7 (signed int v135, signed char v136, signed short v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 0;
signed char v139 = -1;
signed int v138 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
