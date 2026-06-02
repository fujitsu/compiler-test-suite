#include <stdlib.h>
void v1 (signed int, signed char, signed int, signed short);
void (*v2) (signed int, signed char, signed int, signed short) = v1;
extern void v3 (unsigned char, signed char, unsigned short);
extern void (*v4) (unsigned char, signed char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char v7 (signed int, unsigned char);
extern signed char (*v8) (signed int, unsigned char);
extern unsigned char v11 (unsigned int, signed char, signed int);
extern unsigned char (*v12) (unsigned int, signed char, signed int);
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v25 (void);
extern void (*v26) (void);
signed char v27 (signed int, unsigned int);
signed char (*v28) (signed int, unsigned int) = v27;
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 4;
signed char v108 = 0;
unsigned short v107 = 7;

signed char v27 (signed int v110, unsigned int v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 6;
signed short v113 = 2;
signed char v112 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed int v115;
signed char v116;
signed int v117;
signed short v118;
v115 = 3 - v110;
v116 = v112 + -4;
v117 = v110 - v110;
v118 = v113 - -4;
v1 (v115, v116, v117, v118);
}
break;
case 13: 
return v112;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned int v121 = 3U;
signed char v120 = -2;
signed short v119 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v122, signed char v123, signed int v124, signed short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -2;
signed char v127 = 3;
unsigned int v126 = 3U;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
unsigned int v129;
unsigned int v130;
unsigned int v131;
unsigned int v132;
unsigned char v133;
v129 = 1U - 1U;
v130 = 5U + 1U;
v131 = v126 - 3U;
v132 = 1U + v126;
v133 = v5 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 8: 
{
unsigned int v134;
unsigned short v135;
signed char v136;
v134 = v126 + 4U;
v135 = 0 + 1;
v136 = v29 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return;
case 17: 
return;
default: abort ();
}
}
}
}
