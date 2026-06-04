#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned char v5 (signed short, signed int, signed short, signed int);
extern unsigned char (*v6) (signed short, signed int, signed short, signed int);
extern signed char v7 (signed short, unsigned char, unsigned int, signed int);
extern signed char (*v8) (signed short, unsigned char, unsigned int, signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed char v11 (unsigned short, unsigned char, signed char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, signed char, unsigned short);
extern signed char v13 (void);
extern signed char (*v14) (void);
void v15 (signed int, signed int);
void (*v16) (signed int, signed int) = v15;
signed int v17 (unsigned short, signed short);
signed int (*v18) (unsigned short, signed short) = v17;
void v19 (unsigned short, signed int);
void (*v20) (unsigned short, signed int) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
extern void v25 (unsigned int, unsigned char, unsigned short, signed int);
extern void (*v26) (unsigned int, unsigned char, unsigned short, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed char v29 (signed short, unsigned short, unsigned int);
extern signed char (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = -4;
unsigned short v118 = 7;
signed int v117 = -1;

signed char v23 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -1;
unsigned int v122 = 1U;
signed char v121 = 3;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v124;
unsigned char v125;
unsigned short v126;
signed int v127;
v124 = v122 + v122;
v125 = 4 - 4;
v126 = v120 + 7;
v127 = 1 - 3;
v25 (v124, v125, v126, v127);
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

void v19 (unsigned short v128, signed int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 1;
unsigned int v131 = 4U;
signed short v130 = 2;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed int v17 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 5U;
signed char v136 = -3;
signed char v135 = 3;
trace++;
switch (trace)
{
case 3: 
return -3;
case 5: 
{
unsigned int v138;
unsigned char v139;
unsigned short v140;
signed int v141;
v138 = 4U + 5U;
v139 = 4 - 0;
v140 = v133 + v133;
v141 = -3 - 1;
v25 (v138, v139, v140, v141);
}
break;
case 7: 
{
unsigned int v142;
unsigned char v143;
unsigned short v144;
signed int v145;
v142 = v137 + 6U;
v143 = 2 + 2;
v144 = v133 - 3;
v145 = -4 + -4;
v25 (v142, v143, v144, v145);
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

void v15 (signed int v146, signed int v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = -1;
unsigned int v149 = 5U;
unsigned char v148 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
