#include <stdlib.h>
extern void v1 (unsigned int, unsigned short);
extern void (*v2) (unsigned int, unsigned short);
extern signed char v3 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v4) (unsigned char, unsigned char, signed short, signed short);
extern unsigned short v7 (unsigned char, signed short, signed char);
extern unsigned short (*v8) (unsigned char, signed short, signed char);
extern unsigned char v11 (unsigned int, signed char, signed short);
extern unsigned char (*v12) (unsigned int, signed char, signed short);
extern unsigned int v13 (signed int, unsigned short);
extern unsigned int (*v14) (signed int, unsigned short);
extern signed int v15 (signed int, signed short, unsigned short, signed char);
extern signed int (*v16) (signed int, signed short, unsigned short, signed char);
unsigned int v17 (unsigned short, unsigned int);
unsigned int (*v18) (unsigned short, unsigned int) = v17;
extern signed short v21 (signed char, signed int, unsigned int);
extern signed short (*v22) (signed char, signed int, unsigned int);
extern unsigned char v23 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed char, signed char);
extern signed int v29 (unsigned short, signed char, signed int);
extern signed int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = -2;
signed short v59 = -1;
unsigned short v58 = 1;

unsigned int v17 (unsigned short v61, unsigned int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = 0;
signed char v64 = 2;
unsigned int v63 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
