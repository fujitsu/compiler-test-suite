#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern unsigned char v3 (signed short, signed char, unsigned char);
extern unsigned char (*v4) (signed short, signed char, unsigned char);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern signed int v11 (signed short, unsigned short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed short, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (unsigned int, signed char, signed short);
extern signed int (*v22) (unsigned int, signed char, signed short);
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short v27 (signed short, unsigned short, unsigned char);
extern unsigned short (*v28) (signed short, unsigned short, unsigned char);
extern signed int v29 (signed int, signed int, signed short);
extern signed int (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v146 = -3;
signed char v145 = 0;
unsigned char v144 = 2;

void v9 (unsigned short v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -4;
signed char v149 = 1;
signed int v148 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
