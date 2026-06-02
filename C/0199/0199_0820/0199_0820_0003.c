#include <stdlib.h>
void v1 (signed short, signed char, unsigned char);
void (*v2) (signed short, signed char, unsigned char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, signed int, unsigned int);
extern unsigned int v7 (unsigned int, signed short, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int, signed int);
void v9 (unsigned int, signed short, unsigned char);
void (*v10) (unsigned int, signed short, unsigned char) = v9;
extern signed char v11 (signed int, unsigned int);
extern signed char (*v12) (signed int, unsigned int);
extern signed int v13 (unsigned short, signed char, signed char, signed int);
extern signed int (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern unsigned short v17 (signed char, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned short, signed int);
unsigned int v19 (unsigned int, signed short);
unsigned int (*v20) (unsigned int, signed short) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed int);
extern unsigned char (*v28) (signed int);
unsigned short v29 (signed int, signed char, signed char);
unsigned short (*v30) (signed int, signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v106 = 2;
signed short v105 = 0;
signed int v104 = 0;

unsigned short v29 (signed int v107, signed char v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 1;
signed short v111 = 2;
unsigned short v110 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v113, signed short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -2;
unsigned short v116 = 7;
unsigned char v115 = 7;
trace++;
switch (trace)
{
case 8: 
return 2U;
case 10: 
return 5U;
default: abort ();
}
}
}
}

void v9 (unsigned int v118, signed short v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned short v123 = 5;
unsigned short v122 = 2;
signed char v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v124, signed char v125, unsigned char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -2;
signed short v128 = -1;
unsigned short v127 = 3;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
signed int v130;
unsigned int v131;
signed int v132;
v130 = -1 + -4;
v131 = 1U - 1U;
v132 = v25 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 3: 
{
signed short v133;
signed int v134;
v133 = v124 + v128;
v134 = v21 (v133);
history[history_index++] = (int)v134;
}
break;
case 5: 
{
unsigned int v135;
signed short v136;
signed int v137;
signed int v138;
unsigned int v139;
v135 = 3U - 1U;
v136 = v124 + 3;
v137 = -1 + -3;
v138 = -3 + 1;
v139 = v7 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
