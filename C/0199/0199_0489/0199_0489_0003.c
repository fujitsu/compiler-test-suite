#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern signed int v3 (unsigned char, signed int, unsigned short, signed short);
extern signed int (*v4) (unsigned char, signed int, unsigned short, signed short);
signed int v5 (unsigned char, unsigned short);
signed int (*v6) (unsigned char, unsigned short) = v5;
unsigned char v7 (signed char);
unsigned char (*v8) (signed char) = v7;
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned int, unsigned char);
extern void v15 (signed int, signed char, signed int);
extern void (*v16) (signed int, signed char, signed int);
static signed short v17 (signed char, unsigned int);
static signed short (*v18) (signed char, unsigned int) = v17;
extern unsigned char v19 (signed short, signed char, signed char, unsigned short);
extern unsigned char (*v20) (signed short, signed char, signed char, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed int v23 (unsigned int, unsigned int, signed short);
extern signed int (*v24) (unsigned int, unsigned int, signed short);
extern signed short v25 (unsigned int, signed int, signed short);
extern signed short (*v26) (unsigned int, signed int, signed short);
extern signed char v27 (unsigned char, unsigned short);
extern signed char (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (signed char, unsigned char, unsigned short, signed short);
extern unsigned char (*v30) (signed char, unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 1;
signed short v103 = -3;
signed char v102 = 1;

static signed short v17 (signed char v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 6;
unsigned int v108 = 1U;
signed int v107 = -4;
trace++;
switch (trace)
{
case 9: 
{
signed short v110;
signed char v111;
signed char v112;
unsigned short v113;
unsigned char v114;
v110 = 1 - -1;
v111 = v105 - v105;
v112 = 1 + v105;
v113 = 1 + 5;
v114 = v19 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v7 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 6;
unsigned int v117 = 5U;
signed int v116 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v119, unsigned short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 1;
unsigned int v122 = 4U;
signed char v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed int v126 = 2;
unsigned int v125 = 5U;
signed char v124 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v127;
signed int v128;
unsigned short v129;
signed short v130;
signed int v131;
v127 = 2 - 4;
v128 = -1 - v126;
v129 = 0 - 0;
v130 = -1 + 2;
v131 = v3 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 2: 
{
signed short v132;
v132 = v11 ();
history[history_index++] = (int)v132;
}
break;
case 8: 
{
signed char v133;
unsigned int v134;
signed short v135;
v133 = v124 - v124;
v134 = 2U + 6U;
v135 = v17 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return v126;
default: abort ();
}
}
}
}
