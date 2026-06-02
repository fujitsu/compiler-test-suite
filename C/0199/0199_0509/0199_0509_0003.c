#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned char v7 (signed int, signed char, signed char, signed short);
extern unsigned char (*v8) (signed int, signed char, signed char, signed short);
extern unsigned char v9 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v10) (unsigned char, signed short, signed char, signed short);
extern signed int v11 (signed short, unsigned char, unsigned short, unsigned short);
extern signed int (*v12) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, signed int, signed int);
extern unsigned int (*v14) (unsigned char, signed int, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed char v19 (signed int, unsigned int, unsigned int);
extern signed char (*v20) (signed int, unsigned int, unsigned int);
unsigned char v21 (signed char, unsigned short, signed char);
unsigned char (*v22) (signed char, unsigned short, signed char) = v21;
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = -4;
signed int v119 = -1;
unsigned int v118 = 6U;

unsigned char v21 (signed char v121, unsigned short v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 2U;
signed char v125 = -2;
signed int v124 = -1;
trace++;
switch (trace)
{
case 2: 
return 7;
default: abort ();
}
}
}
}
