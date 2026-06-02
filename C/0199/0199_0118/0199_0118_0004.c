#include <stdlib.h>
signed int v1 (unsigned short, signed short);
signed int (*v2) (unsigned short, signed short) = v1;
static signed char v3 (unsigned short);
static signed char (*v4) (unsigned short) = v3;
signed char v5 (signed char, signed short);
signed char (*v6) (signed char, signed short) = v5;
extern void v7 (unsigned int, unsigned char, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed char v17 (signed char, signed int, signed int);
extern signed char (*v18) (signed char, signed int, signed int);
signed char v19 (void);
signed char (*v20) (void) = v19;
void v21 (signed short, signed char, unsigned int, unsigned char);
void (*v22) (signed short, signed char, unsigned int, unsigned char) = v21;
extern unsigned short v23 (unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned char, unsigned char);
extern unsigned char v25 (signed int, signed char, unsigned short);
extern unsigned char (*v26) (signed int, signed char, unsigned short);
signed int v27 (signed short, signed short, signed char, unsigned int);
signed int (*v28) (signed short, signed short, signed char, unsigned int) = v27;
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v102 = 0;
unsigned char v101 = 6;
unsigned char v100 = 1;

signed int v27 (signed short v103, signed short v104, signed char v105, unsigned int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 7;
unsigned short v108 = 6;
signed char v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v110, signed char v111, unsigned int v112, unsigned char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 1;
unsigned int v115 = 3U;
unsigned int v114 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
signed int v119 = 2;
signed short v118 = -2;
unsigned int v117 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 5;
signed char v123 = 1;
unsigned int v122 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -2;
signed char v127 = -4;
unsigned short v126 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v129;
signed char v130;
unsigned short v131;
unsigned char v132;
v129 = -1 + 3;
v130 = 1 - -2;
v131 = v126 - 2;
v132 = v25 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 3: 
{
signed int v133;
signed char v134;
unsigned short v135;
unsigned char v136;
v133 = -1 + 3;
v134 = 0 - -3;
v135 = v125 - v125;
v136 = v25 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 5: 
{
unsigned char v137;
signed int v138;
v137 = 5 + 6;
v138 = v9 (v137);
history[history_index++] = (int)v138;
}
break;
case 11: 
return v127;
default: abort ();
}
}
}
}

signed int v1 (unsigned short v139, signed short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 2;
unsigned int v142 = 0U;
unsigned int v141 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v144;
signed char v145;
v144 = 5 + v139;
v145 = v3 (v144);
history[history_index++] = (int)v145;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
