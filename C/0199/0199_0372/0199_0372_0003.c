#include <stdlib.h>
unsigned short v1 (unsigned short, signed short, unsigned int, signed char);
unsigned short (*v2) (unsigned short, signed short, unsigned int, signed char) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
signed int v5 (signed short, unsigned int, signed int);
signed int (*v6) (signed short, unsigned int, signed int) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (unsigned short, signed int, unsigned int);
extern void (*v10) (unsigned short, signed int, unsigned int);
extern unsigned char v11 (signed int, unsigned int, signed short, signed short);
extern unsigned char (*v12) (signed int, unsigned int, signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char (*v18) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int v19 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned char);
signed char v21 (unsigned int);
signed char (*v22) (unsigned int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, signed int, signed short, signed char);
extern unsigned int (*v30) (unsigned char, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 1;
signed char v110 = 1;
signed int v109 = -2;

unsigned short v25 (void)
{
{
for (;;) {
unsigned int v114 = 6U;
signed char v113 = 2;
signed int v112 = -2;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 1U;
unsigned char v117 = 4;
unsigned short v116 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v119, unsigned int v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 2U;
signed char v123 = -1;
unsigned short v122 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v125, signed short v126, unsigned int v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 3U;
signed int v130 = -4;
unsigned short v129 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v132;
unsigned int v133;
unsigned char v134;
unsigned int v135;
v132 = v131 + v131;
v133 = 4U - v131;
v134 = 4 + 7;
v135 = v19 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 2: 
{
signed int v136;
v136 = v3 ();
history[history_index++] = (int)v136;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
