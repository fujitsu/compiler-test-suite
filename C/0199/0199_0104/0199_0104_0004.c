#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned short v3 (signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed int, signed int);
extern unsigned char v5 (signed int, unsigned short, signed int);
extern unsigned char (*v6) (signed int, unsigned short, signed int);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
static unsigned char v9 (unsigned char, unsigned char);
static unsigned char (*v10) (unsigned char, unsigned char) = v9;
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
void v17 (signed int, unsigned int, signed char);
void (*v18) (signed int, unsigned int, signed char) = v17;
extern signed short v19 (signed int, unsigned int);
extern signed short (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern signed int v25 (unsigned char, unsigned char, signed char);
extern signed int (*v26) (unsigned char, unsigned char, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed short v29 (signed char, signed char, unsigned int);
extern signed short (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v106 = 3U;
unsigned char v105 = 3;
signed char v104 = 2;

void v17 (signed int v107, unsigned int v108, signed char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
signed short v111 = -3;
unsigned int v110 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v9 (unsigned char v113, unsigned char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -2;
unsigned int v116 = 4U;
unsigned short v115 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v118;
unsigned short v119;
signed int v120;
unsigned char v121;
v118 = -2 + -2;
v119 = v115 + 6;
v120 = 3 - 2;
v121 = v5 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed int v122;
unsigned short v123;
signed int v124;
unsigned char v125;
v122 = 3 + -1;
v123 = 6 - v115;
v124 = 0 + 3;
v125 = v5 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 9: 
{
signed int v126;
unsigned short v127;
signed int v128;
unsigned char v129;
v126 = 1 - 1;
v127 = 7 + 3;
v128 = 2 - -4;
v129 = v5 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
unsigned int v132 = 0U;
signed char v131 = 3;
unsigned char v130 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v133;
signed char v134;
signed char v135;
v133 = 6 + 0;
v134 = -1 + v131;
v135 = v7 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
{
unsigned char v136;
unsigned char v137;
unsigned char v138;
v136 = v130 + v130;
v137 = 4 + 0;
v138 = v9 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}
