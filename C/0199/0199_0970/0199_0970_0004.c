#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (signed int, signed char, unsigned int);
extern signed int (*v4) (signed int, signed char, unsigned int);
extern signed int v5 (signed char, signed char, unsigned int);
extern signed int (*v6) (signed char, signed char, unsigned int);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
static unsigned char v9 (signed int);
static unsigned char (*v10) (signed int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned int);
extern unsigned int v15 (unsigned short, signed char, unsigned char);
extern unsigned int (*v16) (unsigned short, signed char, unsigned char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (unsigned int, signed short, unsigned short);
extern signed char (*v22) (unsigned int, signed short, unsigned short);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
static unsigned int v25 (unsigned int, signed char, unsigned short);
static unsigned int (*v26) (unsigned int, signed char, unsigned short) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v104 = 7;
signed short v103 = -1;
signed int v102 = 2;

static unsigned int v25 (unsigned int v105, signed char v106, unsigned short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 6U;
signed int v109 = 0;
unsigned int v108 = 1U;
trace++;
switch (trace)
{
case 1: 
return v108;
default: abort ();
}
}
}
}

static unsigned char v9 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 7U;
signed short v113 = 1;
signed short v112 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v115;
signed char v116;
unsigned char v117;
unsigned int v118;
v115 = 5 + 7;
v116 = 0 - 1;
v117 = 5 - 0;
v118 = v15 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 5: 
{
unsigned short v119;
signed char v120;
unsigned char v121;
unsigned int v122;
v119 = 3 + 3;
v120 = 3 - 0;
v121 = 3 + 0;
v122 = v15 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 7: 
{
unsigned int v123;
unsigned char v124;
v123 = v114 - v114;
v124 = v19 (v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
{
unsigned int v125;
unsigned char v126;
v125 = v114 + v114;
v126 = v19 (v125);
history[history_index++] = (int)v126;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed int v129 = 0;
unsigned char v128 = 4;
signed int v127 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v130;
signed char v131;
unsigned short v132;
unsigned int v133;
v130 = 2U - 0U;
v131 = 1 - -1;
v132 = 1 - 5;
v133 = v25 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 2: 
{
signed int v134;
unsigned char v135;
v134 = v127 + v129;
v135 = v9 (v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}
