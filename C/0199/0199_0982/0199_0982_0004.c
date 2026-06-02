#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed char v5 (unsigned char, signed char, unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed char, signed int);
extern signed int (*v8) (signed short, signed char, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed int, signed short, signed short);
extern void (*v14) (signed int, signed short, signed short);
unsigned short v15 (unsigned int, signed int);
unsigned short (*v16) (unsigned int, signed int) = v15;
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed int v19 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int (*v20) (unsigned short, unsigned char, unsigned int, unsigned int);
extern unsigned char v21 (unsigned int, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int);
extern signed short v23 (signed short, signed int, signed char);
extern signed short (*v24) (signed short, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
static signed short v29 (signed int, unsigned char, unsigned char, signed short);
static signed short (*v30) (signed int, unsigned char, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 4U;
unsigned char v113 = 6;
signed int v112 = -3;

static signed short v29 (signed int v115, unsigned char v116, unsigned char v117, signed short v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -4;
unsigned short v120 = 3;
signed int v119 = 2;
trace++;
switch (trace)
{
case 6: 
return v118;
case 10: 
return v118;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = 3;
unsigned short v125 = 4;
unsigned int v124 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned int v129 = 7U;
unsigned int v128 = 1U;
signed short v127 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed short v130;
unsigned char v131;
v130 = 0 - 2;
v131 = v27 (v130);
history[history_index++] = (int)v131;
}
break;
case 5: 
{
signed int v132;
unsigned char v133;
unsigned char v134;
signed short v135;
signed short v136;
v132 = 3 + 1;
v133 = 5 - 7;
v134 = 3 - 5;
v135 = v127 + -2;
v136 = v29 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 7: 
{
signed short v137;
unsigned char v138;
v137 = v127 - 0;
v138 = v27 (v137);
history[history_index++] = (int)v138;
}
break;
case 9: 
{
signed int v139;
unsigned char v140;
unsigned char v141;
signed short v142;
signed short v143;
v139 = 2 - -3;
v140 = 6 - 7;
v141 = 0 + 1;
v142 = v127 + -3;
v143 = v29 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
