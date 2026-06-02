#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned char, unsigned short, signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned int, unsigned short, signed char);
extern signed char v9 (signed short, signed int, signed char);
extern signed char (*v10) (signed short, signed int, signed char);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern void v13 (unsigned short, unsigned int, signed char, signed char);
extern void (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
void v17 (unsigned int, unsigned short, signed char);
void (*v18) (unsigned int, unsigned short, signed char) = v17;
extern unsigned char v19 (signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed int, unsigned short, unsigned char);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v141 = 3;
unsigned char v140 = 0;
signed short v139 = -2;

void v17 (unsigned int v142, unsigned short v143, signed char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -1;
signed char v146 = -4;
unsigned int v145 = 0U;
trace++;
switch (trace)
{
case 1: 
return;
case 5: 
return;
default: abort ();
}
}
}
}
