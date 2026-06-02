#include <stdlib.h>
unsigned char v1 (unsigned int, signed int, unsigned int);
unsigned char (*v2) (unsigned int, signed int, unsigned int) = v1;
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed char, unsigned int);
extern unsigned short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed int, unsigned char, unsigned short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
unsigned int v11 (unsigned short);
unsigned int (*v12) (unsigned short) = v11;
extern signed int v13 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v14) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (unsigned short, unsigned short, signed int);
extern signed int (*v18) (unsigned short, unsigned short, signed int);
signed int v19 (unsigned int, unsigned int);
signed int (*v20) (unsigned int, unsigned int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern signed short v25 (signed char, unsigned char);
extern signed short (*v26) (signed char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = 1;
signed int v104 = 0;
unsigned short v103 = 1;

signed int v19 (unsigned int v106, unsigned int v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -3;
signed int v109 = 3;
unsigned char v108 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
unsigned short v113 = 5;
unsigned int v112 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v115, signed int v116, unsigned int v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -3;
signed char v119 = -2;
unsigned char v118 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v121;
signed int v122;
unsigned char v123;
unsigned short v124;
unsigned char v125;
v121 = 4 - 5;
v122 = v116 - v116;
v123 = 7 + 0;
v124 = 0 - 5;
v125 = v7 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 2: 
{
unsigned short v126;
unsigned short v127;
signed int v128;
signed int v129;
v126 = 3 + 1;
v127 = 1 + 2;
v128 = v116 - 2;
v129 = v17 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 6: 
{
unsigned char v130;
signed int v131;
unsigned char v132;
unsigned short v133;
unsigned char v134;
v130 = v118 - 6;
v131 = v116 + v116;
v132 = v118 - 4;
v133 = 1 + 6;
v134 = v7 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
unsigned short v135;
unsigned int v136;
signed char v137;
v135 = 6 - 3;
v136 = v117 - v117;
v137 = v3 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
