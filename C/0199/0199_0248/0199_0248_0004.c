#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned short v3 (unsigned short, signed char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned short, signed char, unsigned char, unsigned int);
extern signed short v5 (signed short, signed char, signed int, unsigned char);
extern signed short (*v6) (signed short, signed char, signed int, unsigned char);
static unsigned int v7 (unsigned int, unsigned int, signed int, signed short);
static unsigned int (*v8) (unsigned int, unsigned int, signed int, signed short) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (signed short);
unsigned short (*v12) (signed short) = v11;
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned int, unsigned char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
static unsigned short v25 (signed int, unsigned char);
static unsigned short (*v26) (signed int, unsigned char) = v25;
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = 0;
unsigned char v100 = 4;
signed int v99 = -1;

static unsigned short v25 (signed int v102, unsigned char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -4;
signed int v105 = -3;
unsigned short v104 = 1;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return 6;
case 6: 
return 7;
case 8: 
return v104;
default: abort ();
}
}
}
}

unsigned short v11 (signed short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -3;
signed short v109 = 2;
signed char v108 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned int v111, unsigned int v112, signed int v113, signed short v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 0;
unsigned int v116 = 1U;
unsigned short v115 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v118;
unsigned char v119;
unsigned short v120;
v118 = v113 - 0;
v119 = 0 - 1;
v120 = v25 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 3: 
{
signed int v121;
unsigned char v122;
unsigned short v123;
v121 = 1 - v113;
v122 = 1 + 3;
v123 = v25 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 5: 
{
signed int v124;
unsigned char v125;
unsigned short v126;
v124 = v117 - -1;
v125 = 6 - 2;
v126 = v25 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 7: 
{
signed int v127;
unsigned char v128;
unsigned short v129;
v127 = v117 - v117;
v128 = 4 + 6;
v129 = v25 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 9: 
return v112;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v132 = 4;
signed char v131 = -3;
signed int v130 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v133;
unsigned int v134;
signed int v135;
signed short v136;
unsigned int v137;
v133 = 2U - 5U;
v134 = 7U - 7U;
v135 = v130 + v130;
v136 = -3 + 2;
v137 = v7 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 10: 
{
signed short v138;
unsigned char v139;
v138 = -1 + 3;
v139 = v17 (v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
