#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned int v3 (signed int, unsigned int, signed short);
extern unsigned int (*v4) (signed int, unsigned int, signed short);
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
extern signed int v7 (signed short, signed int, signed short, signed short);
extern signed int (*v8) (signed short, signed int, signed short, signed short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
unsigned char v11 (signed char, unsigned int, unsigned short, signed short);
unsigned char (*v12) (signed char, unsigned int, unsigned short, signed short) = v11;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern unsigned short v21 (signed short, signed int);
extern unsigned short (*v22) (signed short, signed int);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (signed char, signed char, unsigned short, unsigned short);
extern signed short (*v28) (signed char, signed char, unsigned short, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v140 = 2;
signed int v139 = 2;
signed short v138 = 3;

unsigned char v11 (signed char v141, unsigned int v142, unsigned short v143, signed short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 2;
signed short v146 = 2;
signed char v145 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
