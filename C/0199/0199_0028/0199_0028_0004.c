#include <stdlib.h>
unsigned short v1 (unsigned int, unsigned short);
unsigned short (*v2) (unsigned int, unsigned short) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
unsigned short v7 (signed int, signed short);
unsigned short (*v8) (signed int, signed short) = v7;
extern unsigned char v9 (signed char, signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed char, signed int, unsigned char, signed char);
extern signed char v11 (signed short);
extern signed char (*v12) (signed short);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned int v17 (unsigned short, signed char, signed char);
extern unsigned int (*v18) (unsigned short, signed char, signed char);
extern unsigned short v19 (unsigned short, signed short, signed int, unsigned char);
extern unsigned short (*v20) (unsigned short, signed short, signed int, unsigned char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed char, signed char);
extern signed short (*v24) (signed char, signed char);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
unsigned int v27 (signed short, unsigned short, unsigned int);
unsigned int (*v28) (signed short, unsigned short, unsigned int) = v27;
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 3;
unsigned short v108 = 5;
signed int v107 = -4;

unsigned int v27 (signed short v110, unsigned short v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 0;
unsigned short v114 = 1;
unsigned short v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -4;
unsigned int v119 = 0U;
signed int v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 0;
signed int v124 = -3;
signed short v123 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v126;
signed short v127;
v126 = 6 - 7;
v127 = -3 + v123;
v15 (v126, v127);
}
break;
case 2: 
{
unsigned char v128;
signed short v129;
v128 = 3 + 0;
v129 = v123 - v125;
v15 (v128, v129);
}
break;
case 4: 
{
unsigned short v130;
signed short v131;
signed int v132;
unsigned char v133;
unsigned short v134;
v130 = v122 + 6;
v131 = v125 + v125;
v132 = v124 + 3;
v133 = 6 + 3;
v134 = v19 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 6: 
return v122;
case 7: 
{
signed char v135;
signed char v136;
signed short v137;
v135 = -3 - 2;
v136 = 2 + 1;
v137 = v23 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 9: 
{
unsigned short v138;
signed char v139;
signed char v140;
unsigned int v141;
v138 = 7 - 3;
v139 = 2 - -2;
v140 = 2 - 2;
v141 = v17 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
