#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
unsigned char v11 (unsigned int, signed char);
unsigned char (*v12) (unsigned int, signed char) = v11;
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
void v17 (signed int, unsigned char);
void (*v18) (signed int, unsigned char) = v17;
extern signed int v19 (unsigned short, signed char, unsigned short);
extern signed int (*v20) (unsigned short, signed char, unsigned short);
static signed char v21 (void);
static signed char (*v22) (void) = v21;
extern void v23 (unsigned char, signed short, unsigned int);
extern void (*v24) (unsigned char, signed short, unsigned int);
extern signed int v25 (signed short, unsigned char, unsigned short);
extern signed int (*v26) (signed short, unsigned char, unsigned short);
extern unsigned short v27 (signed short, signed int, signed int, signed int);
extern unsigned short (*v28) (signed short, signed int, signed int, signed int);
extern void v29 (unsigned int, signed char, unsigned int);
extern void (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -3;
signed int v106 = -3;
signed char v105 = 2;

static signed char v21 (void)
{
{
for (;;) {
signed char v110 = 2;
unsigned short v109 = 1;
unsigned char v108 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed short v111;
signed int v112;
signed int v113;
signed int v114;
unsigned short v115;
v111 = -2 - -4;
v112 = 3 - -4;
v113 = 0 - 0;
v114 = 0 - 2;
v115 = v27 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
{
signed short v116;
signed int v117;
signed int v118;
signed int v119;
unsigned short v120;
v116 = 3 + -2;
v117 = -2 + -3;
v118 = -2 + 1;
v119 = 0 + -1;
v120 = v27 (v116, v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 7: 
return -3;
case 9: 
{
signed short v121;
signed int v122;
signed int v123;
signed int v124;
unsigned short v125;
v121 = -1 - 2;
v122 = 2 + -3;
v123 = 1 + -3;
v124 = -4 - 0;
v125 = v27 (v121, v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 11: 
return v110;
default: abort ();
}
}
}
}

void v17 (signed int v126, unsigned char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 6;
signed short v129 = -4;
unsigned int v128 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned short v133 = 5;
unsigned short v132 = 0;
signed int v131 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed char v134;
v134 = v21 ();
history[history_index++] = (int)v134;
}
break;
case 8: 
{
signed char v135;
v135 = v21 ();
history[history_index++] = (int)v135;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v136, signed char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 3;
signed int v139 = -4;
signed char v138 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
