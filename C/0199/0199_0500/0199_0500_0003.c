#include <stdlib.h>
extern signed int v3 (signed char, signed int, signed short);
extern signed int (*v4) (signed char, signed int, signed short);
extern void v5 (void);
extern void (*v6) (void);
unsigned char v7 (signed char, signed short, signed char);
unsigned char (*v8) (signed char, signed short, signed char) = v7;
unsigned short v9 (unsigned int, signed int, unsigned short);
unsigned short (*v10) (unsigned int, signed int, unsigned short) = v9;
signed char v11 (unsigned char, unsigned short, signed char, signed short);
signed char (*v12) (unsigned char, unsigned short, signed char, signed short) = v11;
unsigned int v13 (signed short);
unsigned int (*v14) (signed short) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
void v17 (unsigned char, unsigned int);
void (*v18) (unsigned char, unsigned int) = v17;
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
static unsigned short v23 (unsigned int, signed short, signed short, unsigned char);
static unsigned short (*v24) (unsigned int, signed short, signed short, unsigned char) = v23;
extern void v25 (signed short, signed short, unsigned char, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char, unsigned char);
void v27 (unsigned short, unsigned int, unsigned int, unsigned char);
void (*v28) (unsigned short, unsigned int, unsigned int, unsigned char) = v27;
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v80 = 0;
signed int v79 = -4;
signed int v78 = 1;

void v27 (unsigned short v81, unsigned int v82, unsigned int v83, unsigned char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 7;
unsigned int v86 = 4U;
signed short v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v23 (unsigned int v88, signed short v89, signed short v90, unsigned char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -2;
signed char v93 = -1;
unsigned short v92 = 4;
trace++;
switch (trace)
{
case 4: 
return 2;
case 8: 
return 4;
case 10: 
return v92;
default: abort ();
}
}
}
}

void v17 (unsigned char v95, unsigned int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 0U;
unsigned char v98 = 0;
unsigned char v97 = 1;
trace++;
switch (trace)
{
case 1: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v13 (signed short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
unsigned int v102 = 5U;
signed short v101 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned char v104, unsigned short v105, signed char v106, signed short v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 3;
signed short v109 = -1;
signed short v108 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v111;
signed short v112;
signed short v113;
unsigned char v114;
unsigned short v115;
v111 = 6U - 2U;
v112 = v108 + v109;
v113 = v109 - v107;
v114 = 7 + v104;
v115 = v23 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
{
unsigned char v116;
unsigned int v117;
v116 = 6 + v104;
v117 = 2U - 4U;
v17 (v116, v117);
}
break;
case 7: 
{
unsigned int v118;
signed short v119;
signed short v120;
unsigned char v121;
unsigned short v122;
v118 = 5U + 6U;
v119 = v108 + v109;
v120 = v107 + v108;
v121 = v104 + 5;
v122 = v23 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
unsigned int v123;
signed short v124;
signed short v125;
unsigned char v126;
unsigned short v127;
v123 = 1U + 0U;
v124 = v108 - v107;
v125 = v108 + -2;
v126 = v104 + v104;
v127 = v23 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v128, signed int v129, unsigned short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 4;
unsigned char v132 = 2;
signed int v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v134, signed short v135, signed char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 1;
signed int v138 = -1;
unsigned int v137 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
