#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned char, signed char, signed short, unsigned short);
extern unsigned char (*v4) (unsigned char, signed char, signed short, unsigned short);
extern signed short v5 (unsigned short, unsigned short);
extern signed short (*v6) (unsigned short, unsigned short);
unsigned char v7 (unsigned char, signed char, unsigned int);
unsigned char (*v8) (unsigned char, signed char, unsigned int) = v7;
signed short v9 (signed char, signed char, unsigned char, unsigned short);
signed short (*v10) (signed char, signed char, unsigned char, unsigned short) = v9;
extern unsigned short v11 (unsigned short, signed short);
extern unsigned short (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed char);
extern signed short (*v14) (unsigned int, signed char);
extern signed short v15 (signed int, signed int);
extern signed short (*v16) (signed int, signed int);
extern unsigned short v17 (signed int, signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed int, signed short, unsigned int, unsigned char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern unsigned char v21 (unsigned char, signed int, signed short, unsigned char);
extern unsigned char (*v22) (unsigned char, signed int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (signed char, unsigned char, unsigned short);
extern signed short (*v26) (signed char, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, unsigned int, unsigned char);
extern void (*v28) (unsigned char, signed int, unsigned int, unsigned char);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v110 = 3;
unsigned short v109 = 3;
unsigned char v108 = 1;

signed short v9 (signed char v111, signed char v112, unsigned char v113, unsigned short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 6;
signed short v116 = -4;
unsigned char v115 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v118;
signed short v119;
unsigned short v120;
v118 = v117 + v117;
v119 = v116 - v116;
v120 = v11 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 8: 
{
unsigned short v121;
signed short v122;
unsigned short v123;
v121 = v117 - 6;
v122 = 1 + v116;
v123 = v11 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 14: 
return v116;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v124, signed char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -1;
unsigned short v128 = 7;
unsigned short v127 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
