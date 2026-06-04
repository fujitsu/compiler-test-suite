#include <stdlib.h>
signed short v1 (signed char, unsigned short, signed short, unsigned int);
signed short (*v2) (signed char, unsigned short, signed short, unsigned int) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
static signed char v7 (unsigned char, unsigned char, signed int, unsigned char);
static signed char (*v8) (unsigned char, unsigned char, signed int, unsigned char) = v7;
extern signed char v9 (unsigned int, unsigned int);
extern signed char (*v10) (unsigned int, unsigned int);
extern signed int v11 (unsigned char, signed char, unsigned char);
extern signed int (*v12) (unsigned char, signed char, unsigned char);
extern signed char v13 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v14) (signed short, unsigned short, signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
signed char v17 (signed int, unsigned int, signed char);
signed char (*v18) (signed int, unsigned int, signed char) = v17;
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
static unsigned char v23 (unsigned short, signed int, signed short, signed char);
static unsigned char (*v24) (unsigned short, signed int, signed short, signed char) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed int, signed int, unsigned char, signed int);
extern signed int (*v28) (signed int, signed int, unsigned char, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = 2;
signed char v80 = -4;
signed char v79 = 3;

static unsigned char v23 (unsigned short v82, signed int v83, signed short v84, signed char v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 4;
unsigned char v87 = 1;
unsigned short v86 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed int v89;
v89 = v29 ();
history[history_index++] = (int)v89;
}
break;
case 3: 
{
signed int v90;
v90 = v29 ();
history[history_index++] = (int)v90;
}
break;
case 5: 
{
signed int v91;
v91 = v29 ();
history[history_index++] = (int)v91;
}
break;
case 7: 
{
signed int v92;
v92 = v29 ();
history[history_index++] = (int)v92;
}
break;
case 9: 
return v87;
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed short v95 = 1;
signed short v94 = -2;
signed short v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v96, unsigned int v97, signed char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 5;
unsigned short v100 = 3;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (unsigned char v102, unsigned char v103, signed int v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 0;
signed char v107 = -1;
unsigned char v106 = 5;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v1 (signed char v109, unsigned short v110, signed short v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = -2;
signed char v114 = 0;
signed int v113 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v116;
signed int v117;
signed short v118;
signed char v119;
unsigned char v120;
v116 = v110 - 1;
v117 = 2 - v113;
v118 = -2 - 2;
v119 = v114 - v109;
v120 = v23 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 10: 
{
unsigned char v121;
unsigned char v122;
signed int v123;
unsigned char v124;
signed char v125;
v121 = 4 + 2;
v122 = 7 + 6;
v123 = v113 + 1;
v124 = 7 - 4;
v125 = v7 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 12: 
return v111;
default: abort ();
}
}
}
}
