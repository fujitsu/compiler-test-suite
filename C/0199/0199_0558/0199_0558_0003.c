#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned char, unsigned char);
unsigned char (*v2) (unsigned short, unsigned char, unsigned char) = v1;
unsigned int v3 (signed int, unsigned int, signed short, unsigned char);
unsigned int (*v4) (signed int, unsigned int, signed short, unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
static signed short v7 (void);
static signed short (*v8) (void) = v7;
extern unsigned char v9 (unsigned short, unsigned short, signed short);
extern unsigned char (*v10) (unsigned short, unsigned short, signed short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned char v13 (signed char, unsigned char, signed short);
extern unsigned char (*v14) (signed char, unsigned char, signed short);
signed short v15 (signed short, unsigned short);
signed short (*v16) (signed short, unsigned short) = v15;
extern unsigned short v17 (unsigned int, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned int, signed int, signed char);
extern unsigned int v19 (signed int, unsigned int, signed char);
extern unsigned int (*v20) (signed int, unsigned int, signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned short, signed short, unsigned int);
extern void (*v24) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v25 (signed int, signed char, signed char);
extern unsigned short (*v26) (signed int, signed char, signed char);
extern unsigned char v27 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v28) (unsigned int, unsigned short, signed int, signed short);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 2;
signed int v92 = 3;
unsigned short v91 = 2;

signed short v15 (signed short v94, unsigned short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 6;
signed char v97 = 1;
signed short v96 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (void)
{
{
for (;;) {
unsigned int v101 = 6U;
signed char v100 = 1;
unsigned int v99 = 5U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v102, unsigned int v103, signed short v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 1U;
unsigned short v107 = 3;
unsigned short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v109, unsigned char v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -1;
signed int v113 = 2;
signed short v112 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v115;
v115 = v7 ();
history[history_index++] = (int)v115;
}
break;
case 2: 
{
signed short v116;
unsigned short v117;
signed short v118;
unsigned int v119;
v116 = -1 + v112;
v117 = v109 + v109;
v118 = v112 - v112;
v119 = 4U - 4U;
v23 (v116, v117, v118, v119);
}
break;
case 4: 
{
signed char v120;
unsigned char v121;
signed short v122;
unsigned char v123;
v120 = v114 + v114;
v121 = v110 + v111;
v122 = 2 - v112;
v123 = v13 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 6: 
{
signed char v124;
unsigned char v125;
signed short v126;
unsigned char v127;
v124 = 2 - -2;
v125 = v111 + v110;
v126 = v112 + v112;
v127 = v13 (v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 8: 
{
signed int v128;
signed int v129;
signed char v130;
v128 = v113 - v113;
v129 = 1 + v113;
v130 = v29 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return v110;
default: abort ();
}
}
}
}
