#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed int v3 (signed short, unsigned int, unsigned int, signed char);
extern signed int (*v4) (signed short, unsigned int, unsigned int, signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (signed int, unsigned int, signed char);
extern unsigned char (*v8) (signed int, unsigned int, signed char);
extern signed short v9 (signed int, unsigned char);
extern signed short (*v10) (signed int, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed char, signed char, signed int, unsigned short);
extern void (*v14) (signed char, signed char, signed int, unsigned short);
unsigned char v15 (signed short, signed short, unsigned short);
unsigned char (*v16) (signed short, signed short, unsigned short) = v15;
static void v17 (unsigned short, signed char, signed int);
static void (*v18) (unsigned short, signed char, signed int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
static signed char v21 (void);
static signed char (*v22) (void) = v21;
extern signed char v23 (unsigned char, unsigned char, signed char);
extern signed char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed short v29 (unsigned short, signed int);
extern signed short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 2;
unsigned char v93 = 2;
unsigned char v92 = 7;

static signed char v21 (void)
{
{
for (;;) {
unsigned short v97 = 6;
unsigned int v96 = 6U;
signed char v95 = 2;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v98;
unsigned char v99;
signed char v100;
signed char v101;
v98 = 5 - 3;
v99 = 6 + 2;
v100 = v95 - -1;
v101 = v23 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 12: 
return v95;
default: abort ();
}
}
}
}

static void v17 (unsigned short v102, signed char v103, signed int v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = -2;
signed char v106 = -1;
signed int v105 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v108;
unsigned char v109;
signed char v110;
signed char v111;
v108 = 3 + 6;
v109 = 1 + 0;
v110 = v107 + 1;
v111 = v23 (v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 3: 
{
unsigned char v112;
unsigned char v113;
signed char v114;
signed char v115;
v112 = 4 + 3;
v113 = 4 - 4;
v114 = v106 + v106;
v115 = v23 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
{
unsigned short v116;
signed int v117;
signed short v118;
v116 = 7 - v102;
v117 = v104 - -1;
v118 = v29 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
{
unsigned char v119;
unsigned char v120;
signed char v121;
signed char v122;
v119 = 7 - 2;
v120 = 0 + 4;
v121 = -3 + v103;
v122 = v23 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
signed char v123;
v123 = v21 ();
history[history_index++] = (int)v123;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v124, signed short v125, unsigned short v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 2U;
unsigned int v128 = 4U;
unsigned int v127 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v132 = 1;
signed short v131 = -4;
unsigned char v130 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v133;
signed char v134;
signed int v135;
v133 = 7 - 1;
v134 = 0 - v132;
v135 = -1 - 0;
v17 (v133, v134, v135);
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
