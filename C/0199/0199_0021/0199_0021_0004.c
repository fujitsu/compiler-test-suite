#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern void v7 (signed short, unsigned char, signed int);
extern void (*v8) (signed short, unsigned char, signed int);
unsigned short v9 (signed short);
unsigned short (*v10) (signed short) = v9;
unsigned char v11 (signed short, unsigned int, unsigned char, signed short);
unsigned char (*v12) (signed short, unsigned int, unsigned char, signed short) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, unsigned short);
extern signed char (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed char, signed short);
extern unsigned int (*v24) (signed char, signed short);
extern void v25 (void);
extern void (*v26) (void);
unsigned short v27 (signed char, signed short, unsigned short);
unsigned short (*v28) (signed char, signed short, unsigned short) = v27;
signed char v29 (signed char, unsigned char, unsigned int, signed int);
signed char (*v30) (signed char, unsigned char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 4U;
signed char v102 = 1;
signed char v101 = -1;

signed char v29 (signed char v104, unsigned char v105, unsigned int v106, signed int v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 7;
unsigned short v109 = 4;
unsigned int v108 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (signed char v111, signed short v112, unsigned short v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 3U;
unsigned short v115 = 1;
signed char v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed short v119 = 1;
signed int v118 = -3;
unsigned char v117 = 7;
trace++;
switch (trace)
{
case 9: 
{
signed char v120;
signed short v121;
unsigned int v122;
v120 = 1 - -1;
v121 = -1 - v119;
v122 = v23 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 11: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v123, unsigned int v124, unsigned char v125, signed short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 4;
unsigned short v128 = 5;
signed int v127 = -1;
trace++;
switch (trace)
{
case 1: 
return 4;
case 4: 
return 4;
case 6: 
return v125;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
signed int v132 = -2;
unsigned short v131 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v134;
unsigned int v135;
unsigned char v136;
signed short v137;
unsigned char v138;
v134 = 0 + v130;
v135 = 4U - 7U;
v136 = 7 - 7;
v137 = -4 + -3;
v138 = v11 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 5: 
{
signed short v139;
unsigned int v140;
unsigned char v141;
signed short v142;
unsigned char v143;
v139 = v130 - -3;
v140 = 6U - 7U;
v141 = 4 - 4;
v142 = -4 + v130;
v143 = v11 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 7: 
return 2;
default: abort ();
}
}
}
}
