#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern unsigned int v5 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned char, unsigned int);
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
extern unsigned char v11 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, signed char, signed int, unsigned char);
extern unsigned int v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned int (*v14) (unsigned short, signed short, signed int, unsigned short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed short, signed short);
extern signed int (*v18) (signed short, signed short);
extern unsigned short v19 (unsigned char, signed int, signed int, signed char);
extern unsigned short (*v20) (unsigned char, signed int, signed int, signed char);
unsigned char v21 (signed short);
unsigned char (*v22) (signed short) = v21;
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v117 = 2U;
signed int v116 = 3;
signed short v115 = -4;

unsigned char v21 (signed short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 6;
signed short v120 = 1;
signed short v119 = -4;
trace++;
switch (trace)
{
case 4: 
{
signed int v122;
signed char v123;
signed int v124;
unsigned char v125;
unsigned char v126;
v122 = -4 - 1;
v123 = 2 - 3;
v124 = 1 - -4;
v125 = 7 + 1;
v126 = v11 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
return 5;
default: abort ();
}
}
}
}
