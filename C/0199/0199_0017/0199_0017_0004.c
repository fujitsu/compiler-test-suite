#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned short v3 (unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned short);
extern unsigned char (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed short, unsigned short);
extern unsigned int (*v8) (signed char, signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned char, unsigned int, signed short);
extern signed int (*v16) (unsigned char, unsigned int, signed short);
static signed int v17 (signed char, signed int, signed char, signed int);
static signed int (*v18) (signed char, signed int, signed char, signed int) = v17;
extern signed short v19 (unsigned short, signed short, signed char);
extern signed short (*v20) (unsigned short, signed short, signed char);
void v21 (void);
void (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (signed int, unsigned short);
unsigned short (*v26) (signed int, unsigned short) = v25;
extern signed char v27 (signed int, unsigned short, signed char, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = 2;
signed short v102 = -1;
unsigned char v101 = 5;

unsigned short v25 (signed int v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 0;
signed short v107 = 3;
signed char v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v111 = 0U;
signed int v110 = 3;
signed int v109 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v112;
unsigned short v113;
signed char v114;
unsigned char v115;
signed char v116;
v112 = 1 + v110;
v113 = 3 - 0;
v114 = -4 + 0;
v115 = 4 + 6;
v116 = v27 (v112, v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 6: 
{
signed int v117;
unsigned short v118;
signed char v119;
unsigned char v120;
signed char v121;
v117 = v110 + 2;
v118 = 0 + 0;
v119 = 2 + 2;
v120 = 2 - 3;
v121 = v27 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

static signed int v17 (signed char v122, signed int v123, signed char v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 2;
unsigned char v127 = 6;
signed short v126 = 3;
trace++;
switch (trace)
{
case 11: 
return v125;
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned char v131 = 1;
unsigned int v130 = 4U;
signed short v129 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v132;
signed short v133;
signed char v134;
signed short v135;
v132 = 1 - 0;
v133 = v129 + 0;
v134 = -1 - 1;
v135 = v19 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 2: 
{
unsigned short v136;
signed int v137;
unsigned short v138;
signed char v139;
v136 = 7 - 7;
v137 = -2 + 2;
v138 = 7 + 6;
v139 = v11 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 10: 
{
signed char v140;
signed int v141;
signed char v142;
signed int v143;
signed int v144;
v140 = 1 - -2;
v141 = -4 + -3;
v142 = -2 - 3;
v143 = -2 + 2;
v144 = v17 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
