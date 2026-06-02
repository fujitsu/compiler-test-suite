#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
extern unsigned char v3 (unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (unsigned int, signed char, unsigned int);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern signed short v7 (signed int, unsigned char, signed short, signed char);
extern signed short (*v8) (signed int, unsigned char, signed short, signed char);
unsigned char v9 (unsigned short, unsigned int);
unsigned char (*v10) (unsigned short, unsigned int) = v9;
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
unsigned int v13 (unsigned char, signed short);
unsigned int (*v14) (unsigned char, signed short) = v13;
extern unsigned char v15 (unsigned int, signed short, unsigned int);
extern unsigned char (*v16) (unsigned int, signed short, unsigned int);
signed int v17 (unsigned int, unsigned char, signed short);
signed int (*v18) (unsigned int, unsigned char, signed short) = v17;
extern signed char v21 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
static signed short v25 (unsigned short);
static signed short (*v26) (unsigned short) = v25;
extern void v29 (signed char, signed int, signed int, unsigned int);
extern void (*v30) (signed char, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = 2;
unsigned char v116 = 7;
unsigned char v115 = 0;

static signed short v25 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -3;
signed char v120 = -1;
unsigned char v119 = 2;
trace++;
switch (trace)
{
case 6: 
return v121;
case 8: 
{
unsigned int v122;
unsigned char v123;
signed short v124;
signed int v125;
v122 = 0U - 4U;
v123 = 4 - 6;
v124 = -2 + -1;
v125 = v17 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 10: 
return v121;
case 12: 
return v121;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v126, unsigned char v127, signed short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 3;
signed int v130 = 3;
unsigned int v129 = 3U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v132;
signed short v133;
v132 = 5 - 5;
v133 = v25 (v132);
history[history_index++] = (int)v133;
}
break;
case 7: 
{
unsigned short v134;
signed short v135;
v134 = 1 - 5;
v135 = v25 (v134);
history[history_index++] = (int)v135;
}
break;
case 9: 
{
unsigned short v136;
signed short v137;
v136 = 6 - 0;
v137 = v25 (v136);
history[history_index++] = (int)v137;
}
break;
case 11: 
return v130;
case 13: 
return v130;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v138, signed short v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 1;
unsigned int v141 = 7U;
signed int v140 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v143, unsigned int v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 7;
signed short v146 = 2;
signed char v145 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
