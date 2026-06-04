#include <stdlib.h>
void v1 (signed char, unsigned int, signed short, unsigned char);
void (*v2) (signed char, unsigned int, signed short, unsigned char) = v1;
extern signed char v3 (unsigned int, signed char, unsigned int);
extern signed char (*v4) (unsigned int, signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char, signed int, signed int);
extern unsigned int (*v6) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern void v9 (signed short, unsigned char, signed short);
extern void (*v10) (signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed int, unsigned char, signed short);
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern unsigned char v15 (signed short, signed char, signed short);
extern unsigned char (*v16) (signed short, signed char, signed short);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned char v19 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v20) (signed int, signed int, signed short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed int v25 (signed int, unsigned short);
signed int (*v26) (signed int, unsigned short) = v25;
extern unsigned int v27 (unsigned char, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned char, signed short, signed char, signed char);
extern unsigned int v29 (unsigned char, unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v103 = 1;
unsigned char v102 = 4;
unsigned short v101 = 3;

signed int v25 (signed int v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 3;
signed int v107 = -3;
unsigned char v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v111 = -4;
signed char v110 = -3;
unsigned char v109 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed short v112;
unsigned char v113;
signed short v114;
v112 = v111 + v111;
v113 = v109 + v109;
v114 = -1 + -1;
v9 (v112, v113, v114);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

void v1 (signed char v115, unsigned int v116, signed short v117, unsigned char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 0;
signed short v120 = 3;
unsigned short v119 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v122;
signed short v123;
signed char v124;
signed char v125;
unsigned int v126;
v122 = v118 + v118;
v123 = v120 + v120;
v124 = v115 + -2;
v125 = v115 - v115;
v126 = v27 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 2: 
{
unsigned char v127;
signed int v128;
unsigned char v129;
signed short v130;
unsigned short v131;
v127 = v118 - v118;
v128 = -2 + 3;
v129 = v118 + 0;
v130 = v120 - v117;
v131 = v11 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 8: 
{
signed short v132;
signed char v133;
signed short v134;
unsigned char v135;
v132 = -2 + -3;
v133 = v115 + v115;
v134 = v117 + -2;
v135 = v15 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
