#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern signed int v3 (unsigned short, unsigned char, signed short);
extern signed int (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (unsigned int, unsigned char, signed char);
extern signed short (*v6) (unsigned int, unsigned char, signed char);
extern signed short v7 (unsigned char, signed char, signed char);
extern signed short (*v8) (unsigned char, signed char, signed char);
extern void v9 (unsigned int, signed int, signed char, unsigned int);
extern void (*v10) (unsigned int, signed int, signed char, unsigned int);
unsigned int v11 (unsigned int, signed short, unsigned char);
unsigned int (*v12) (unsigned int, signed short, unsigned char) = v11;
signed char v13 (signed char, unsigned int, unsigned short);
signed char (*v14) (signed char, unsigned int, unsigned short) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed short v19 (signed char, unsigned short, signed short, unsigned char);
signed short (*v20) (signed char, unsigned short, signed short, unsigned char) = v19;
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v115 = -1;
unsigned short v114 = 2;
unsigned short v113 = 5;

unsigned char v27 (void)
{
{
for (;;) {
unsigned short v118 = 4;
signed int v117 = 3;
signed char v116 = -3;
trace++;
switch (trace)
{
case 7: 
return 1;
default: abort ();
}
}
}
}

signed short v19 (signed char v119, unsigned short v120, signed short v121, unsigned char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 4;
signed int v124 = -4;
unsigned short v123 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v126;
unsigned int v127;
unsigned char v128;
v126 = v125 - v120;
v127 = 5U - 6U;
v128 = v21 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 3: 
return 0;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed int v131 = 1;
unsigned short v130 = 7;
signed int v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v132, unsigned int v133, unsigned short v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 0;
unsigned char v136 = 2;
signed int v135 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v138, signed short v139, unsigned char v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 2;
signed char v142 = -4;
unsigned int v141 = 1U;
trace++;
switch (trace)
{
case 9: 
return v141;
default: abort ();
}
}
}
}
