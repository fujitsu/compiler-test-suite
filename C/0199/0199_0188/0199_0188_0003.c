#include <stdlib.h>
unsigned short v1 (signed short, unsigned int, unsigned short);
unsigned short (*v2) (signed short, unsigned int, unsigned short) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned short v5 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned short (*v6) (unsigned short, signed int, unsigned char, unsigned short);
extern signed char v7 (unsigned int, signed char, unsigned int);
extern signed char (*v8) (unsigned int, signed char, unsigned int);
extern signed short v9 (unsigned char, unsigned char, unsigned char);
extern signed short (*v10) (unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (signed short, signed char, unsigned short, unsigned short);
extern unsigned int (*v12) (signed short, signed char, unsigned short, unsigned short);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern signed short v15 (unsigned int, unsigned short, signed int);
extern signed short (*v16) (unsigned int, unsigned short, signed int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern signed int v19 (unsigned char, unsigned short, signed int, signed short);
extern signed int (*v20) (unsigned char, unsigned short, signed int, signed short);
extern unsigned char v21 (unsigned char, unsigned char, signed char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned char v29 (unsigned char, signed short, signed char, signed int);
extern unsigned char (*v30) (unsigned char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 2U;
unsigned int v111 = 1U;
unsigned int v110 = 7U;

unsigned short v13 (unsigned int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = -1;
unsigned int v115 = 3U;
unsigned short v114 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v117, unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 7U;
unsigned char v121 = 2;
signed char v120 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v123;
unsigned short v124;
signed int v125;
signed short v126;
v123 = v118 + v122;
v124 = v119 - 4;
v125 = -3 - -1;
v126 = v15 (v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 2: 
{
unsigned char v127;
signed char v128;
v127 = v121 + 1;
v128 = v17 (v127);
history[history_index++] = (int)v128;
}
break;
case 4: 
{
unsigned char v129;
signed short v130;
signed char v131;
signed int v132;
unsigned char v133;
v129 = v121 + v121;
v130 = 3 - -3;
v131 = 1 + -1;
v132 = -4 - -3;
v133 = v29 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 6: 
{
unsigned short v134;
signed int v135;
v134 = 6 + 7;
v135 = v3 (v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
