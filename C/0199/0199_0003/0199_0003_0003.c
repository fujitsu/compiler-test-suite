#include <stdlib.h>
void v1 (unsigned int, signed int);
void (*v2) (unsigned int, signed int) = v1;
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
extern unsigned int v5 (signed int, signed char, unsigned char);
extern unsigned int (*v6) (signed int, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, unsigned int);
extern signed int (*v8) (unsigned short, signed char, unsigned int);
signed short v9 (void);
signed short (*v10) (void) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed int v13 (signed char, signed char);
extern signed int (*v14) (signed char, signed char);
extern void v15 (unsigned char, unsigned int, unsigned short);
extern void (*v16) (unsigned char, unsigned int, unsigned short);
unsigned int v17 (signed char, unsigned short, unsigned int, signed char);
unsigned int (*v18) (signed char, unsigned short, unsigned int, signed char) = v17;
extern unsigned short v19 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v20) (unsigned short, signed short, signed int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
extern signed int v25 (unsigned short, unsigned int, signed int, signed short);
extern signed int (*v26) (unsigned short, unsigned int, signed int, signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned short, signed short, unsigned short);
extern signed int (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 6U;
unsigned char v102 = 2;
unsigned short v101 = 6;

unsigned int v17 (signed char v104, unsigned short v105, unsigned int v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 3;
unsigned short v109 = 6;
signed char v108 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned short v113 = 5;
unsigned int v112 = 2U;
unsigned char v111 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned char v116 = 4;
unsigned char v115 = 5;
unsigned int v114 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v117, signed int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 2U;
signed char v120 = 2;
unsigned int v119 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed char v122;
signed char v123;
signed int v124;
v122 = -2 - 0;
v123 = v120 + v120;
v124 = v13 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 2: 
{
unsigned short v125;
signed char v126;
v125 = 1 + 5;
v126 = -4 - -4;
v23 (v125, v126);
}
break;
case 4: 
return;
case 5: 
{
unsigned short v127;
signed char v128;
unsigned int v129;
signed int v130;
v127 = 2 - 3;
v128 = v120 + v120;
v129 = v121 + v121;
v130 = v7 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 7: 
{
signed int v131;
signed char v132;
unsigned char v133;
unsigned int v134;
v131 = 1 - 3;
v132 = v120 - v120;
v133 = 3 - 5;
v134 = v5 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
