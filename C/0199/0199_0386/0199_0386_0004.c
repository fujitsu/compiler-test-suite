#include <stdlib.h>
unsigned short v1 (unsigned char, signed short, signed char);
unsigned short (*v2) (unsigned char, signed short, signed char) = v1;
extern signed int v3 (signed short, signed short);
extern signed int (*v4) (signed short, signed short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
unsigned int v9 (signed short, unsigned short, signed char);
unsigned int (*v10) (signed short, unsigned short, signed char) = v9;
extern signed char v11 (unsigned int, signed char);
extern signed char (*v12) (unsigned int, signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
signed short v17 (signed int, unsigned int);
signed short (*v18) (signed int, unsigned int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int, signed int);
extern unsigned char (*v22) (signed short, signed int, signed int);
signed int v23 (signed int);
signed int (*v24) (signed int) = v23;
extern signed int v25 (signed int, unsigned short, signed short);
extern signed int (*v26) (signed int, unsigned short, signed short);
signed char v27 (unsigned int, unsigned short, signed short, unsigned int);
signed char (*v28) (unsigned int, unsigned short, signed short, unsigned int) = v27;
extern signed int v29 (signed short, signed int);
extern signed int (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v111 = 1U;
unsigned char v110 = 7;
unsigned short v109 = 0;

signed char v27 (unsigned int v112, unsigned short v113, signed short v114, unsigned int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 7U;
unsigned short v117 = 5;
unsigned char v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 0U;
unsigned char v121 = 7;
signed char v120 = -3;
trace++;
switch (trace)
{
case 2: 
return v119;
default: abort ();
}
}
}
}

signed short v17 (signed int v123, unsigned int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 6;
unsigned int v126 = 6U;
unsigned short v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed short v128, unsigned short v129, signed char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 4;
signed char v132 = -4;
unsigned short v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned int v136 = 1U;
signed char v135 = -1;
unsigned char v134 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v137, signed short v138, signed char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 2;
signed short v141 = -3;
unsigned int v140 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v143;
unsigned short v144;
unsigned short v145;
signed int v146;
unsigned char v147;
v143 = v140 - v140;
v144 = 3 + 4;
v145 = 5 - 4;
v146 = 3 - -2;
v147 = v15 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
