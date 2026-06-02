#include <stdlib.h>
signed int v1 (unsigned short, signed char);
signed int (*v2) (unsigned short, signed char) = v1;
signed int v3 (signed int, unsigned char, signed int, signed short);
signed int (*v4) (signed int, unsigned char, signed int, signed short) = v3;
extern unsigned int v5 (unsigned short, unsigned int);
extern unsigned int (*v6) (unsigned short, unsigned int);
extern signed int v7 (unsigned short, unsigned short, signed int, signed char);
extern signed int (*v8) (unsigned short, unsigned short, signed int, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern unsigned int v15 (unsigned int);
extern unsigned int (*v16) (unsigned int);
extern unsigned int v17 (signed char, unsigned short, signed short);
extern unsigned int (*v18) (signed char, unsigned short, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned int v23 (signed int, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned short);
signed short v25 (signed char, signed short, unsigned int);
signed short (*v26) (signed char, signed short, unsigned int) = v25;
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
unsigned short v29 (signed short, signed char, unsigned char);
unsigned short (*v30) (signed short, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = 1;
unsigned char v110 = 6;
signed char v109 = -2;

unsigned short v29 (signed short v112, signed char v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 3;
signed int v116 = -4;
unsigned char v115 = 0;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 2;
case 8: 
return 1;
case 10: 
return 5;
default: abort ();
}
}
}
}

signed short v25 (signed char v118, signed short v119, unsigned int v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -1;
signed int v122 = 3;
signed int v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v126 = 2U;
signed short v125 = 1;
signed short v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v127, unsigned char v128, signed int v129, signed short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 7;
unsigned short v132 = 6;
signed short v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v134, signed char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 5;
unsigned short v137 = 2;
signed int v136 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v139;
unsigned short v140;
signed int v141;
signed char v142;
signed int v143;
v139 = v134 + v134;
v140 = v137 + v137;
v141 = v136 + 0;
v142 = v135 - -4;
v143 = v7 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 2: 
{
unsigned short v144;
signed char v145;
v144 = v137 + v134;
v145 = v27 (v144);
history[history_index++] = (int)v145;
}
break;
case 12: 
return v136;
default: abort ();
}
}
}
}
