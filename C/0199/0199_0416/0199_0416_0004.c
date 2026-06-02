#include <stdlib.h>
extern signed int v1 (signed char, unsigned char, unsigned char, unsigned int);
extern signed int (*v2) (signed char, unsigned char, unsigned char, unsigned int);
extern signed int v3 (signed int, signed int, unsigned char);
extern signed int (*v4) (signed int, signed int, unsigned char);
void v5 (unsigned short, signed short, signed char);
void (*v6) (unsigned short, signed short, signed char) = v5;
extern signed int v7 (unsigned short, signed short, signed char);
extern signed int (*v8) (unsigned short, signed short, signed char);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed char v13 (unsigned int, unsigned char);
extern signed char (*v14) (unsigned int, unsigned char);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
unsigned int v19 (unsigned char, unsigned short, signed int, signed char);
unsigned int (*v20) (unsigned char, unsigned short, signed int, signed char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed char, signed int, signed short);
extern signed short (*v24) (signed char, signed int, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v30) (signed short, unsigned char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = -2;
unsigned char v119 = 7;
unsigned short v118 = 1;

unsigned int v19 (unsigned char v121, unsigned short v122, signed int v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 1;
signed char v126 = 3;
unsigned short v125 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed char v128;
signed int v129;
signed short v130;
signed short v131;
v128 = v124 + v124;
v129 = -1 - v123;
v130 = -3 + -2;
v131 = v23 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 5: 
return 2U;
case 11: 
return 1U;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned char v134 = 5;
unsigned short v133 = 2;
unsigned char v132 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v135;
unsigned short v136;
signed int v137;
signed char v138;
unsigned int v139;
v135 = v134 + v134;
v136 = v133 + 4;
v137 = 2 + -1;
v138 = 2 + -4;
v139 = v19 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed char v142 = -2;
unsigned int v141 = 2U;
signed char v140 = 3;
trace++;
switch (trace)
{
case 8: 
{
signed short v143;
v143 = v15 ();
history[history_index++] = (int)v143;
}
break;
case 14: 
return v140;
default: abort ();
}
}
}
}

void v5 (unsigned short v144, signed short v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 7;
unsigned short v148 = 0;
unsigned char v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
