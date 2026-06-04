#include <stdlib.h>
signed char v1 (unsigned int, signed char);
signed char (*v2) (unsigned int, signed char) = v1;
unsigned char v3 (unsigned int, unsigned char, unsigned int);
unsigned char (*v4) (unsigned int, unsigned char, unsigned int) = v3;
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern void v7 (void);
extern void (*v8) (void);
static signed int v9 (unsigned short, signed short);
static signed int (*v10) (unsigned short, signed short) = v9;
extern signed int v11 (unsigned char, unsigned short, signed short, unsigned int);
extern signed int (*v12) (unsigned char, unsigned short, signed short, unsigned int);
extern signed short v13 (signed char, signed char, signed short);
extern signed short (*v14) (signed char, signed char, signed short);
extern unsigned short v15 (unsigned int, signed char, signed short);
extern unsigned short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (signed int, signed short);
extern signed char (*v18) (signed int, signed short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
unsigned char v25 (unsigned char);
unsigned char (*v26) (unsigned char) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = 2;
signed short v104 = -4;
unsigned int v103 = 5U;

unsigned char v25 (unsigned char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 0U;
signed int v108 = -4;
signed char v107 = -1;
trace++;
switch (trace)
{
case 7: 
return v106;
case 11: 
return 3;
default: abort ();
}
}
}
}

static signed int v9 (unsigned short v110, signed short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 5U;
signed int v113 = 3;
signed int v112 = -3;
trace++;
switch (trace)
{
case 1: 
return v112;
case 3: 
{
unsigned int v115;
signed char v116;
v115 = 2U - v114;
v116 = v21 (v115);
history[history_index++] = (int)v116;
}
break;
case 13: 
return v113;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v117, unsigned char v118, unsigned int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 3;
signed char v121 = -1;
signed short v120 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned int v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 2;
signed int v126 = -1;
signed short v125 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v128;
signed short v129;
signed int v130;
v128 = 0 + 2;
v129 = v125 - v125;
v130 = v9 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 2: 
{
unsigned short v131;
signed short v132;
signed int v133;
v131 = 5 - 2;
v132 = v125 + v125;
v133 = v9 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
