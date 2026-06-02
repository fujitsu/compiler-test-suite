#include <stdlib.h>
unsigned int v1 (unsigned int, unsigned char, signed char);
unsigned int (*v2) (unsigned int, unsigned char, signed char) = v1;
extern signed int v3 (unsigned short, signed int, signed short, unsigned short);
extern signed int (*v4) (unsigned short, signed int, signed short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (unsigned short, signed int, unsigned char, unsigned short);
extern signed int (*v8) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v9 (signed char, unsigned short);
extern unsigned char (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
signed int v15 (unsigned char, signed char, signed short);
signed int (*v16) (unsigned char, signed char, signed short) = v15;
extern signed char v17 (signed short, unsigned int, signed char);
extern signed char (*v18) (signed short, unsigned int, signed char);
extern void v19 (signed int, unsigned int, signed short);
extern void (*v20) (signed int, unsigned int, signed short);
static signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
static signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
void v25 (signed int, signed int);
void (*v26) (signed int, signed int) = v25;
signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short) = v27;
extern unsigned short v29 (unsigned short, signed char, unsigned short);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -1;
signed char v84 = -2;
signed int v83 = -4;

signed short v27 (unsigned int v86, unsigned short v87, signed int v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = 3;
signed int v91 = 0;
signed int v90 = 2;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}

void v25 (signed int v93, signed int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 3;
signed short v96 = 2;
unsigned int v95 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (signed char v98, unsigned short v99, unsigned int v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = -1;
unsigned short v103 = 4;
signed char v102 = -3;
trace++;
switch (trace)
{
case 3: 
return v98;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v105, signed char v106, signed short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -2;
unsigned char v109 = 4;
unsigned short v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v111, unsigned char v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 3;
signed int v115 = -4;
signed short v114 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed short v117;
signed int v118;
signed int v119;
v117 = v114 + -1;
v118 = v115 + v116;
v119 = v13 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 2: 
{
signed char v120;
unsigned short v121;
unsigned int v122;
unsigned int v123;
signed char v124;
v120 = 3 + 3;
v121 = 4 + 2;
v122 = 2U + 4U;
v123 = 7U - 2U;
v124 = v21 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 4: 
{
signed short v125;
unsigned int v126;
signed char v127;
signed char v128;
v125 = 0 + v114;
v126 = v111 + v111;
v127 = 3 + 1;
v128 = v17 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 6: 
{
signed short v129;
unsigned int v130;
signed char v131;
signed char v132;
v129 = 3 - v114;
v130 = 6U + 1U;
v131 = v113 + 3;
v132 = v17 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
signed short v133;
signed int v134;
signed int v135;
v133 = -1 + -1;
v134 = v116 + v115;
v135 = v13 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return v111;
case 14: 
return v111;
case 16: 
return v111;
default: abort ();
}
}
}
}
