#include <stdlib.h>
unsigned char v1 (unsigned char, signed int, unsigned int);
unsigned char (*v2) (unsigned char, signed int, unsigned int) = v1;
extern signed char v3 (signed int, unsigned short, signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned short, signed int, unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern void v7 (signed char, unsigned char, signed int, unsigned short);
extern void (*v8) (signed char, unsigned char, signed int, unsigned short);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed short, unsigned char, signed int);
extern signed int (*v16) (signed short, unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short, signed short);
extern signed short (*v18) (unsigned char, unsigned short, signed short);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern void v21 (unsigned short, unsigned short, signed int);
extern void (*v22) (unsigned short, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
void v25 (signed int, signed int, signed int, signed char);
void (*v26) (signed int, signed int, signed int, signed char) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
static unsigned char v29 (unsigned short, unsigned int);
static unsigned char (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 2;
signed short v93 = 2;
unsigned short v92 = 6;

static unsigned char v29 (unsigned short v95, unsigned int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 3;
unsigned short v98 = 7;
unsigned short v97 = 6;
trace++;
switch (trace)
{
case 9: 
return 7;
default: abort ();
}
}
}
}

void v25 (signed int v100, signed int v101, signed int v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 3;
unsigned short v105 = 4;
unsigned char v104 = 0;
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
unsigned short v109 = 1;
unsigned short v108 = 7;
signed short v107 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v110, signed int v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 5U;
unsigned char v114 = 4;
unsigned short v113 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v116;
signed int v117;
v116 = 0 + -4;
v117 = v19 (v116);
history[history_index++] = (int)v117;
}
break;
case 4: 
{
signed int v118;
unsigned short v119;
signed int v120;
unsigned int v121;
signed char v122;
v118 = v111 + -4;
v119 = v113 + 1;
v120 = 3 - v111;
v121 = v115 - v115;
v122 = v3 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
{
signed int v123;
unsigned short v124;
signed int v125;
unsigned int v126;
signed char v127;
v123 = 0 + 1;
v124 = 7 + 0;
v125 = -1 + -4;
v126 = v115 + v115;
v127 = v3 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 8: 
{
unsigned short v128;
unsigned int v129;
unsigned char v130;
v128 = 0 + 5;
v129 = 3U - v112;
v130 = v29 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 10: 
{
signed int v131;
unsigned short v132;
signed int v133;
unsigned int v134;
signed char v135;
v131 = v111 - -2;
v132 = 6 - 2;
v133 = 2 + v111;
v134 = 7U + v112;
v135 = v3 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
