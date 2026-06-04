#include <stdlib.h>
void v1 (unsigned short, unsigned char, unsigned short, signed char);
void (*v2) (unsigned short, unsigned char, unsigned short, signed char) = v1;
extern void v3 (signed short, unsigned char, unsigned char);
extern void (*v4) (signed short, unsigned char, unsigned char);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern unsigned short v9 (unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned char, unsigned int);
unsigned char v11 (signed short, signed short, signed short, unsigned int);
unsigned char (*v12) (signed short, signed short, signed short, unsigned int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
extern unsigned int v19 (signed int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned int, unsigned int, unsigned char);
signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 5;
signed short v106 = 0;
unsigned short v105 = 1;

signed char v21 (unsigned int v108, unsigned int v109, unsigned char v110, signed int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 2;
unsigned int v113 = 7U;
signed short v112 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 2;
signed short v117 = 2;
unsigned char v116 = 7;
trace++;
switch (trace)
{
case 5: 
{
signed short v119;
v119 = v23 ();
history[history_index++] = (int)v119;
}
break;
case 7: 
return 3;
case 9: 
{
signed short v120;
v120 = v23 ();
history[history_index++] = (int)v120;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v121, signed short v122, signed short v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 1;
unsigned char v126 = 5;
signed int v125 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v128, unsigned char v129, unsigned short v130, signed char v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 7;
signed int v133 = 0;
unsigned char v132 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v135;
unsigned char v136;
unsigned char v137;
v135 = 3 + -4;
v136 = 3 + 1;
v137 = 2 - v134;
v3 (v135, v136, v137);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
