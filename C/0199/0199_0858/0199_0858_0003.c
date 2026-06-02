#include <stdlib.h>
extern void v1 (unsigned short, signed char, signed char);
extern void (*v2) (unsigned short, signed char, signed char);
void v3 (void);
void (*v4) (void) = v3;
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern unsigned char v7 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned int, signed char);
extern unsigned short v9 (signed char, signed char);
extern unsigned short (*v10) (signed char, signed char);
signed int v11 (unsigned int, unsigned int, unsigned int);
signed int (*v12) (unsigned int, unsigned int, unsigned int) = v11;
signed int v13 (signed short, signed int, unsigned short);
signed int (*v14) (signed short, signed int, unsigned short) = v13;
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned char, unsigned short, signed int);
extern signed short (*v18) (unsigned char, unsigned short, signed int);
extern unsigned int v19 (signed short, signed short, unsigned char, signed char);
extern unsigned int (*v20) (signed short, signed short, unsigned char, signed char);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (unsigned int, unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned int, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned short, unsigned int);
extern unsigned short (*v28) (unsigned int, signed short, unsigned short, unsigned int);
extern signed int v29 (signed char, signed int);
extern signed int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 3U;
signed short v102 = -2;
signed short v101 = -3;

signed int v13 (signed short v104, signed int v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 4U;
signed char v108 = -2;
unsigned char v107 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v110, unsigned int v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 3;
signed short v114 = -2;
unsigned short v113 = 4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v116;
unsigned short v117;
signed int v118;
signed short v119;
v116 = 1 + 5;
v117 = 3 - v115;
v118 = 3 - 3;
v119 = v17 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 5: 
{
unsigned char v120;
unsigned short v121;
signed int v122;
signed short v123;
v120 = 2 - 0;
v121 = 1 - 2;
v122 = -1 + 0;
v123 = v17 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 7: 
{
unsigned char v124;
unsigned short v125;
signed int v126;
signed short v127;
v124 = 6 - 4;
v125 = 3 + v113;
v126 = 3 - 1;
v127 = v17 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 9: 
{
signed char v128;
unsigned short v129;
v128 = -2 + 1;
v129 = v15 (v128);
history[history_index++] = (int)v129;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned char v132 = 5;
signed char v131 = 3;
signed int v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
