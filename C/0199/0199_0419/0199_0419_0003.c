#include <stdlib.h>
extern unsigned char v3 (signed int, signed char);
extern unsigned char (*v4) (signed int, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned char v7 (unsigned short, signed short);
extern unsigned char (*v8) (unsigned short, signed short);
extern signed char v9 (signed short, signed char, signed int, unsigned int);
extern signed char (*v10) (signed short, signed char, signed int, unsigned int);
extern signed int v11 (unsigned short, signed char, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int);
extern signed short v13 (signed char, signed short);
extern signed short (*v14) (signed char, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
signed short v17 (unsigned int, signed char);
signed short (*v18) (unsigned int, signed char) = v17;
extern unsigned char v19 (signed short, unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned short v21 (unsigned char, signed int, signed short);
extern unsigned short (*v22) (unsigned char, signed int, signed short);
extern signed short v23 (signed int, unsigned char, signed short);
extern signed short (*v24) (signed int, unsigned char, signed short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
extern void v27 (signed short, unsigned short, signed char, signed short);
extern void (*v28) (signed short, unsigned short, signed char, signed short);
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v109 = 3U;
unsigned char v108 = 2;
unsigned int v107 = 4U;

signed short v17 (unsigned int v110, signed char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 2U;
signed char v113 = 3;
unsigned char v112 = 7;
trace++;
switch (trace)
{
case 4: 
{
signed short v115;
unsigned short v116;
signed short v117;
unsigned short v118;
unsigned char v119;
v115 = 3 - -2;
v116 = 1 + 0;
v117 = -1 + -2;
v118 = 0 + 6;
v119 = v19 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
