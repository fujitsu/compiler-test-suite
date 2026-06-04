#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned short, unsigned int);
unsigned int (*v2) (unsigned short, unsigned short, unsigned int) = v1;
static signed short v3 (unsigned short, unsigned char);
static signed short (*v4) (unsigned short, unsigned char) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (signed int, signed int, unsigned char, signed int);
extern unsigned int (*v8) (signed int, signed int, unsigned char, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern signed char v11 (signed short, unsigned int);
extern signed char (*v12) (signed short, unsigned int);
static signed short v13 (signed short, signed int, unsigned int, signed int);
static signed short (*v14) (signed short, signed int, unsigned int, signed int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned int (*v18) (signed char, unsigned int, unsigned short, signed int);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned char v25 (unsigned char, unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, unsigned char, signed char);
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
signed char v29 (unsigned char);
signed char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v106 = -4;
signed short v105 = 3;
signed int v104 = 1;

signed char v29 (unsigned char v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 0;
unsigned char v109 = 4;
signed int v108 = -3;
trace++;
switch (trace)
{
case 2: 
return 3;
case 10: 
return -3;
default: abort ();
}
}
}
}

static signed short v13 (signed short v111, signed int v112, unsigned int v113, signed int v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -3;
unsigned short v116 = 0;
unsigned short v115 = 5;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v118;
unsigned char v119;
signed char v120;
unsigned char v121;
v118 = 6 + 4;
v119 = 2 + 2;
v120 = v117 - -1;
v121 = v25 (v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed int v122;
v122 = v23 ();
history[history_index++] = (int)v122;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

static signed short v3 (unsigned short v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 0;
unsigned int v126 = 0U;
signed int v125 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v128;
signed char v129;
v128 = 5 - 2;
v129 = v29 (v128);
history[history_index++] = (int)v129;
}
break;
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v130, unsigned short v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 2;
signed char v134 = 1;
unsigned int v133 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v136;
unsigned char v137;
signed short v138;
v136 = v130 - 1;
v137 = 3 + 4;
v138 = v3 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 4: 
{
signed short v139;
signed int v140;
unsigned int v141;
signed int v142;
signed short v143;
v139 = 3 + 2;
v140 = 3 - 2;
v141 = v133 - 0U;
v142 = -2 + -2;
v143 = v13 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 14: 
return v133;
default: abort ();
}
}
}
}
