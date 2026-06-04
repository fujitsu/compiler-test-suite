#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed char v3 (signed char, signed short);
extern signed char (*v4) (signed char, signed short);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
signed short v11 (signed int, signed int, signed char, signed char);
signed short (*v12) (signed int, signed int, signed char, signed char) = v11;
static void v13 (unsigned int, signed short, unsigned int, unsigned short);
static void (*v14) (unsigned int, signed short, unsigned int, unsigned short) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern signed short v19 (signed char, signed short, unsigned int);
extern signed short (*v20) (signed char, signed short, unsigned int);
extern signed char v21 (unsigned char, unsigned short, signed int);
extern signed char (*v22) (unsigned char, unsigned short, signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, signed short, signed short, signed short);
extern unsigned int (*v26) (signed int, signed short, signed short, signed short);
extern unsigned char v27 (signed int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, unsigned short, unsigned short);
extern signed char v29 (signed char, signed char, unsigned char, signed char);
extern signed char (*v30) (signed char, signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v81 = -1;
unsigned int v80 = 6U;
signed short v79 = 1;

static void v13 (unsigned int v82, signed short v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 3;
unsigned int v87 = 1U;
unsigned short v86 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed int v89;
signed short v90;
signed short v91;
signed short v92;
unsigned int v93;
v89 = -1 + -4;
v90 = v83 + v83;
v91 = -1 - v83;
v92 = v83 - 2;
v93 = v25 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
{
signed int v94;
signed short v95;
signed short v96;
signed short v97;
unsigned int v98;
v94 = -1 - -1;
v95 = v83 - v83;
v96 = v83 + -4;
v97 = v83 + v83;
v98 = v25 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 7: 
{
signed int v99;
signed short v100;
signed short v101;
signed short v102;
unsigned int v103;
v99 = 1 + 1;
v100 = v83 + v83;
v101 = -3 - v83;
v102 = 3 + 1;
v103 = v25 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v11 (signed int v104, signed int v105, signed char v106, signed char v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = 1;
signed short v109 = -2;
signed int v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed int v113 = -2;
signed char v112 = 1;
unsigned char v111 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v116 = 1U;
unsigned short v115 = 0;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v117;
signed short v118;
unsigned short v119;
v117 = 3 - 2;
v118 = 0 - 0;
v119 = v23 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 2: 
{
unsigned int v120;
signed short v121;
unsigned int v122;
unsigned short v123;
v120 = v114 - v114;
v121 = 0 + 3;
v122 = 6U - v116;
v123 = 2 - v115;
v13 (v120, v121, v122, v123);
}
break;
case 10: 
{
signed int v124;
signed short v125;
signed short v126;
signed short v127;
unsigned int v128;
v124 = 3 + -4;
v125 = -2 + 2;
v126 = 1 - 3;
v127 = -1 + -1;
v128 = v25 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
