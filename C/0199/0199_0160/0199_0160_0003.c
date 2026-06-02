#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
void v9 (unsigned int);
void (*v10) (unsigned int) = v9;
extern void v11 (signed char, signed short);
extern void (*v12) (signed char, signed short);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern unsigned char v15 (unsigned char, unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned char, unsigned short, signed short, signed short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed short, signed int);
extern signed int (*v20) (unsigned int, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern unsigned int v23 (unsigned char, signed short, unsigned int, signed char);
extern unsigned int (*v24) (unsigned char, signed short, unsigned int, signed char);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, unsigned int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 6;
signed int v137 = -2;
unsigned char v136 = 4;

void v9 (unsigned int v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 5;
unsigned char v141 = 1;
unsigned char v140 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
