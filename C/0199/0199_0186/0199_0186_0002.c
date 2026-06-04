#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, signed int);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
void v9 (signed short);
void (*v10) (signed short) = v9;
extern unsigned char v11 (signed int, unsigned int);
extern unsigned char (*v12) (signed int, unsigned int);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
void v15 (unsigned short, signed short, signed int);
void (*v16) (unsigned short, signed short, signed int) = v15;
unsigned int v17 (signed char);
unsigned int (*v18) (signed char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed short, signed char, signed char);
extern unsigned int (*v22) (signed short, signed char, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed short v25 (unsigned short, unsigned char, signed int, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int, signed int);
static signed short v27 (unsigned char, unsigned short);
static signed short (*v28) (unsigned char, unsigned short) = v27;
extern unsigned short v29 (unsigned char, signed short, signed int, signed short);
extern unsigned short (*v30) (unsigned char, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v103 = 0;
unsigned char v102 = 3;
signed short v101 = 1;

static signed short v27 (unsigned char v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 2;
unsigned int v107 = 1U;
unsigned char v106 = 7;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v109;
signed short v110;
signed int v111;
signed short v112;
unsigned short v113;
v109 = 7 - v106;
v110 = -2 + -2;
v111 = 3 - 3;
v112 = v108 - v108;
v113 = v29 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 5: 
{
unsigned char v114;
signed short v115;
signed int v116;
signed short v117;
unsigned short v118;
v114 = v104 - 0;
v115 = -2 + v108;
v116 = 0 + 2;
v117 = -3 - 0;
v118 = v29 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
return v108;
case 9: 
{
unsigned char v119;
signed short v120;
signed int v121;
signed short v122;
unsigned short v123;
v119 = 3 - v104;
v120 = 1 + 0;
v121 = 2 + 1;
v122 = v108 - 3;
v123 = v29 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return v108;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 1U;
unsigned char v126 = 4;
signed int v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v128, signed short v129, signed int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 2;
unsigned int v132 = 6U;
unsigned char v131 = 5;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v134;
unsigned short v135;
signed short v136;
v134 = v131 - v133;
v135 = 5 + 5;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 8: 
{
unsigned char v137;
unsigned short v138;
signed short v139;
v137 = v133 + v131;
v138 = 6 + 7;
v139 = v27 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v9 (signed short v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 3;
signed short v142 = -4;
unsigned int v141 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
