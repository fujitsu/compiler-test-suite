#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned char v3 (unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned short, unsigned char, signed short);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, signed int, signed int, signed int);
extern void (*v12) (signed char, signed int, signed int, signed int);
extern void v13 (unsigned char, unsigned char);
extern void (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (unsigned char, signed short, unsigned char);
extern unsigned int (*v16) (unsigned char, signed short, unsigned char);
unsigned int v17 (signed char, unsigned short);
unsigned int (*v18) (signed char, unsigned short) = v17;
extern signed short v19 (unsigned int, signed char, unsigned int);
extern signed short (*v20) (unsigned int, signed char, unsigned int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern signed int v27 (unsigned char, unsigned char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = -4;
unsigned char v130 = 6;
unsigned char v129 = 2;

unsigned int v17 (signed char v132, unsigned short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 3;
unsigned char v135 = 5;
unsigned short v134 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
