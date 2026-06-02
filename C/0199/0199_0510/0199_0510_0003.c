#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned char v9 (unsigned int, unsigned short, signed char);
extern unsigned char (*v10) (unsigned int, unsigned short, signed char);
extern void v11 (signed short, unsigned char, unsigned int, unsigned int);
extern void (*v12) (signed short, unsigned char, unsigned int, unsigned int);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern void v15 (signed int, unsigned short, unsigned short);
extern void (*v16) (signed int, unsigned short, unsigned short);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
signed short v19 (signed int, unsigned char, signed char, signed int);
signed short (*v20) (signed int, unsigned char, signed char, signed int) = v19;
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed char v25 (signed short, signed short, unsigned int, signed int);
extern signed char (*v26) (signed short, signed short, unsigned int, signed int);
extern unsigned short v27 (signed char, signed int, signed short, unsigned char);
extern unsigned short (*v28) (signed char, signed int, signed short, unsigned char);
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v107 = 5;
unsigned int v106 = 0U;
unsigned short v105 = 7;

signed short v19 (signed int v108, unsigned char v109, signed char v110, signed int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 1;
unsigned char v113 = 6;
signed char v112 = -4;
trace++;
switch (trace)
{
case 2: 
{
signed short v115;
signed short v116;
unsigned char v117;
v115 = 1 - -3;
v116 = 2 + -2;
v117 = v29 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
