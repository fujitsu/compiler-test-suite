#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed short v7 (unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int);
extern unsigned int v9 (signed char, signed short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, signed char);
extern signed short v11 (signed char, signed short, unsigned short, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned short, unsigned short);
signed char v13 (unsigned char);
signed char (*v14) (unsigned char) = v13;
void v15 (unsigned int, signed int);
void (*v16) (unsigned int, signed int) = v15;
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned char v19 (signed char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
signed int v25 (unsigned char);
signed int (*v26) (unsigned char) = v25;
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 4;
unsigned short v113 = 4;
signed char v112 = -1;

void v27 (unsigned char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 3;
unsigned short v117 = 0;
unsigned char v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 2;
unsigned short v121 = 7;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned int v123, signed int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 1;
signed char v126 = -2;
signed int v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 6;
unsigned int v130 = 4U;
unsigned short v129 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v132;
v132 = 0 + -2;
v21 (v132);
}
break;
case 4: 
{
signed short v133;
v133 = -1 - -1;
v21 (v133);
}
break;
case 6: 
{
signed short v134;
v134 = 2 - 2;
v21 (v134);
}
break;
case 8: 
{
signed short v135;
v135 = -2 + 1;
v21 (v135);
}
break;
case 10: 
{
signed short v136;
v136 = -3 - 1;
v21 (v136);
}
break;
case 12: 
return -3;
case 15: 
return 3;
default: abort ();
}
}
}
}
