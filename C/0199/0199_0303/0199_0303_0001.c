#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned char, signed short);
unsigned int (*v2) (unsigned char, unsigned char, signed short) = v1;
extern unsigned char v3 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v4) (signed char, signed char, unsigned short, unsigned char);
extern unsigned short v5 (signed short, signed int, signed char);
extern unsigned short (*v6) (signed short, signed int, signed char);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern signed int v9 (unsigned short, unsigned int);
extern signed int (*v10) (unsigned short, unsigned int);
extern signed char v11 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v12) (signed int, unsigned short, signed short, unsigned char);
extern signed short v13 (signed int, unsigned int, signed char, unsigned char);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned char);
extern void v15 (signed char, unsigned short);
extern void (*v16) (signed char, unsigned short);
extern unsigned char v17 (unsigned char, signed int);
extern unsigned char (*v18) (unsigned char, signed int);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern signed short v21 (signed short, signed short, unsigned short);
extern signed short (*v22) (signed short, signed short, unsigned short);
extern unsigned short v23 (signed char, signed int, signed short, signed short);
extern unsigned short (*v24) (signed char, signed int, signed short, signed short);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern void v29 (unsigned short, unsigned int);
extern void (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 1;
unsigned int v83 = 5U;
unsigned int v82 = 7U;

unsigned int v1 (unsigned char v85, unsigned char v86, signed short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 5;
unsigned short v89 = 4;
signed char v88 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v91;
signed int v92;
v91 = 1U - 5U;
v92 = v7 (v91);
history[history_index++] = (int)v92;
}
break;
case 14: 
return 6U;
default: abort ();
}
}
}
}
