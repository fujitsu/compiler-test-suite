#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char);
extern signed char (*v2) (signed int, unsigned int, signed char);
extern void v3 (signed char, signed short, unsigned int, unsigned short);
extern void (*v4) (signed char, signed short, unsigned int, unsigned short);
extern signed short v5 (signed char, signed char, unsigned int, signed int);
extern signed short (*v6) (signed char, signed char, unsigned int, signed int);
extern signed short v7 (signed char, signed char, signed int, signed int);
extern signed short (*v8) (signed char, signed char, signed int, signed int);
extern signed char v9 (unsigned short, signed short, unsigned int, unsigned int);
extern signed char (*v10) (unsigned short, signed short, unsigned int, unsigned int);
extern void v13 (signed int, signed int, signed short);
extern void (*v14) (signed int, signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned char, unsigned int);
unsigned int v17 (unsigned char, unsigned int);
unsigned int (*v18) (unsigned char, unsigned int) = v17;
extern signed char v19 (signed char, unsigned int, signed char, signed char);
extern signed char (*v20) (signed char, unsigned int, signed char, signed char);
extern void v21 (unsigned short, signed short, signed short);
extern void (*v22) (unsigned short, signed short, signed short);
extern signed short v23 (unsigned char, signed char, signed char);
extern signed short (*v24) (unsigned char, signed char, signed char);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern signed char v27 (signed char, unsigned short, signed int);
extern signed char (*v28) (signed char, unsigned short, signed int);
extern signed short v29 (signed short, unsigned short, unsigned char);
extern signed short (*v30) (signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v60 = 2;
signed int v59 = 1;
unsigned short v58 = 5;

unsigned int v17 (unsigned char v61, unsigned int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 1;
signed char v64 = -2;
unsigned char v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
