#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned short);
extern signed char v5 (signed short, signed short, signed char);
extern signed char (*v6) (signed short, signed short, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short v9 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed short, signed int);
void v13 (signed short);
void (*v14) (signed short) = v13;
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed char, signed int, unsigned short, unsigned char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned char v29 (signed int, unsigned short);
extern unsigned char (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v123 = 7;
signed short v122 = -3;
unsigned short v121 = 6;

void v13 (signed short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 1;
signed int v126 = 2;
signed char v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
