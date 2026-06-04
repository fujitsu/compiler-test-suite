#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern signed char v3 (signed char, signed char);
extern signed char (*v4) (signed char, signed char);
extern unsigned char v5 (signed short, signed int, unsigned char);
extern unsigned char (*v6) (signed short, signed int, unsigned char);
extern void v7 (signed char);
extern void (*v8) (signed char);
extern unsigned char v9 (signed char, unsigned int);
extern unsigned char (*v10) (signed char, unsigned int);
static signed short v11 (unsigned char, unsigned short, signed char);
static signed short (*v12) (unsigned char, unsigned short, signed char) = v11;
void v13 (unsigned char, unsigned int, signed short, signed short);
void (*v14) (unsigned char, unsigned int, signed short, signed short) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (signed char, unsigned char, signed int);
extern unsigned char (*v20) (signed char, unsigned char, signed int);
extern unsigned char v21 (signed short, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, unsigned char, unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
extern signed char v29 (signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v103 = 2;
signed char v102 = -2;
unsigned char v101 = 3;

signed short v27 (unsigned short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 7U;
signed int v106 = -3;
unsigned char v105 = 6;
trace++;
switch (trace)
{
case 5: 
{
signed int v108;
unsigned char v109;
signed short v110;
signed char v111;
v108 = v106 - v106;
v109 = 4 + v105;
v110 = 0 - -4;
v111 = v29 (v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 7: 
{
signed int v112;
unsigned char v113;
signed short v114;
signed char v115;
v112 = -3 - v106;
v113 = v105 - 1;
v114 = -4 + -1;
v115 = v29 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 9: 
{
signed int v116;
unsigned char v117;
signed short v118;
signed char v119;
v116 = -1 - 3;
v117 = 4 + v105;
v118 = 1 - -3;
v119 = v29 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

void v13 (unsigned char v120, unsigned int v121, signed short v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -3;
signed char v125 = -4;
signed int v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (unsigned char v127, unsigned short v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -1;
unsigned int v131 = 2U;
signed int v130 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v133;
v133 = v17 ();
history[history_index++] = (int)v133;
}
break;
case 3: 
{
unsigned int v134;
v134 = v17 ();
history[history_index++] = (int)v134;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
unsigned int v137 = 2U;
unsigned char v136 = 7;
unsigned int v135 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v138;
unsigned short v139;
signed char v140;
signed short v141;
v138 = v136 + v136;
v139 = 0 - 4;
v140 = 1 - -2;
v141 = v11 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 14: 
return 7U;
default: abort ();
}
}
}
}
