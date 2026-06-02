#include <stdlib.h>
extern unsigned short v3 (signed char, signed short);
extern unsigned short (*v4) (signed char, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned char v11 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v12) (signed char, signed char, unsigned short, unsigned char);
extern signed char v13 (signed short, unsigned short, unsigned int);
extern signed char (*v14) (signed short, unsigned short, unsigned int);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
void v17 (signed char, unsigned int, signed short);
void (*v18) (signed char, unsigned int, signed short) = v17;
extern void v19 (signed int, signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed char, signed int, unsigned char);
extern unsigned short (*v26) (signed char, signed int, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned int, unsigned short);
extern void (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v141 = 3;
signed char v140 = 0;
signed short v139 = -1;

void v17 (signed char v142, unsigned int v143, signed short v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -1;
unsigned int v146 = 4U;
unsigned char v145 = 1;
trace++;
switch (trace)
{
case 1: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
