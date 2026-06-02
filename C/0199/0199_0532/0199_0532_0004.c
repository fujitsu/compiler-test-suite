#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed char, unsigned int);
extern signed short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
void v17 (signed int);
void (*v18) (signed int) = v17;
unsigned int v19 (signed char, unsigned short, signed char, unsigned int);
unsigned int (*v20) (signed char, unsigned short, signed char, unsigned int) = v19;
extern signed int v21 (signed short, signed int, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned short);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
unsigned char v27 (signed char, signed short, unsigned char);
unsigned char (*v28) (signed char, signed short, unsigned char) = v27;
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v110 = 7;
unsigned char v109 = 3;
unsigned int v108 = 0U;

unsigned char v27 (signed char v111, signed short v112, unsigned char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 0;
signed int v115 = -4;
signed char v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed char v117, unsigned short v118, signed char v119, unsigned int v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 0;
signed char v122 = 3;
signed int v121 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v124;
signed int v125;
signed short v126;
unsigned short v127;
unsigned char v128;
v124 = 5 - 5;
v125 = v121 - 1;
v126 = -2 - 2;
v127 = v118 - 1;
v128 = v25 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 5: 
{
unsigned char v129;
v129 = 3 - 2;
v23 (v129);
}
break;
case 7: 
{
unsigned char v130;
signed int v131;
signed short v132;
unsigned short v133;
unsigned char v134;
v130 = 3 - 5;
v131 = v121 - v121;
v132 = -1 + -3;
v133 = v118 - 2;
v134 = v25 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 9: 
{
unsigned char v135;
signed int v136;
signed short v137;
unsigned short v138;
unsigned char v139;
v135 = 4 - 5;
v136 = 3 + 3;
v137 = -2 + 1;
v138 = v118 - v123;
v139 = v25 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

void v17 (signed int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 3;
unsigned int v142 = 4U;
signed char v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = 0;
unsigned char v146 = 0;
unsigned short v145 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
