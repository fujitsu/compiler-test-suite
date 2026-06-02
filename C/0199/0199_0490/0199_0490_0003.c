#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern signed int v9 (signed short, unsigned short, unsigned int, unsigned int);
extern signed int (*v10) (signed short, unsigned short, unsigned int, unsigned int);
unsigned char v11 (signed int, signed int);
unsigned char (*v12) (signed int, signed int) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
signed int v15 (signed int, signed char, signed char, signed int);
signed int (*v16) (signed int, signed char, signed char, signed int) = v15;
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed int v23 (unsigned short, signed short, signed int, signed short);
extern signed int (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned char v25 (signed char, signed char);
extern unsigned char (*v26) (signed char, signed char);
extern unsigned short v27 (signed short, signed short, signed short, signed short);
extern unsigned short (*v28) (signed short, signed short, signed short, signed short);
unsigned char v29 (signed short, signed short);
unsigned char (*v30) (signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 0;
unsigned char v114 = 6;
unsigned int v113 = 6U;

unsigned char v29 (signed short v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 1;
signed short v119 = -2;
signed int v118 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v121;
signed short v122;
signed short v123;
signed short v124;
unsigned short v125;
v121 = v119 + v117;
v122 = -1 + v120;
v123 = 1 - v119;
v124 = v120 - v117;
v125 = v27 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}

signed int v15 (signed int v126, signed char v127, signed char v128, signed int v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 5;
unsigned int v131 = 4U;
unsigned int v130 = 5U;
trace++;
switch (trace)
{
case 8: 
return -3;
case 10: 
{
signed char v133;
signed char v134;
unsigned char v135;
v133 = v128 - -3;
v134 = v127 + v128;
v135 = v25 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return v129;
default: abort ();
}
}
}
}

unsigned char v11 (signed int v136, signed int v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
unsigned int v139 = 4U;
signed short v138 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed short v141;
signed short v142;
signed short v143;
signed short v144;
unsigned short v145;
v141 = -2 + v138;
v142 = -1 + -3;
v143 = 2 + v138;
v144 = v138 - v138;
v145 = v27 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 16: 
return v140;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = 3;
signed short v148 = 0;
unsigned short v147 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
