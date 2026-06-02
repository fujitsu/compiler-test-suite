#include <stdlib.h>
unsigned int v1 (signed short, signed int, unsigned int);
unsigned int (*v2) (signed short, signed int, unsigned int) = v1;
signed char v3 (unsigned short, unsigned int, unsigned int);
signed char (*v4) (unsigned short, unsigned int, unsigned int) = v3;
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
unsigned char v11 (signed short, signed char);
unsigned char (*v12) (signed short, signed char) = v11;
extern signed int v13 (unsigned char, unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, unsigned char, signed int, unsigned int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
static signed int v19 (void);
static signed int (*v20) (void) = v19;
extern unsigned int v21 (signed int, signed char, signed char);
extern unsigned int (*v22) (signed int, signed char, signed char);
extern void v23 (unsigned int, unsigned int, signed char, unsigned short);
extern void (*v24) (unsigned int, unsigned int, signed char, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
unsigned char v27 (signed short, unsigned short, signed int);
unsigned char (*v28) (signed short, unsigned short, signed int) = v27;
static signed int v29 (signed short, unsigned short);
static signed int (*v30) (signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = 1;
unsigned short v101 = 4;
unsigned short v100 = 0;

static signed int v29 (signed short v103, unsigned short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 5;
signed char v106 = 1;
unsigned int v105 = 6U;
trace++;
switch (trace)
{
case 6: 
return 0;
case 8: 
{
unsigned short v108;
unsigned short v109;
signed int v110;
v108 = 1 + v104;
v109 = 0 - 5;
v110 = v5 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}

unsigned char v27 (signed short v111, unsigned short v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 0;
signed short v115 = 1;
unsigned int v114 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v19 (void)
{
{
for (;;) {
signed short v119 = -1;
unsigned int v118 = 5U;
unsigned short v117 = 7;
trace++;
switch (trace)
{
case 5: 
{
signed short v120;
unsigned short v121;
signed int v122;
v120 = 1 - v119;
v121 = v117 - v117;
v122 = v29 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 7: 
{
signed short v123;
unsigned short v124;
signed int v125;
v123 = v119 - v119;
v124 = 4 - v117;
v125 = v29 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v126, signed char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 4;
signed char v129 = -1;
unsigned char v128 = 5;
trace++;
switch (trace)
{
case 4: 
{
signed int v131;
v131 = v19 ();
history[history_index++] = (int)v131;
}
break;
case 16: 
return 2;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v132, unsigned int v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 1U;
unsigned char v136 = 5;
unsigned short v135 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v138, signed int v139, unsigned int v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 1U;
unsigned short v142 = 5;
unsigned short v141 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v144;
v144 = v9 ();
history[history_index++] = (int)v144;
}
break;
case 2: 
{
signed char v145;
unsigned int v146;
signed char v147;
signed short v148;
v145 = 2 + 2;
v146 = v140 - v140;
v147 = 1 - 2;
v148 = v17 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 18: 
return v143;
default: abort ();
}
}
}
}
