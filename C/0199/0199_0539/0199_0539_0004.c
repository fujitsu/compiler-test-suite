#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned int);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
unsigned short v11 (unsigned int, signed short, signed int);
unsigned short (*v12) (unsigned int, signed short, signed int) = v11;
extern unsigned short v13 (signed char, unsigned char, unsigned short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (signed short, unsigned int, signed short);
unsigned short (*v18) (signed short, unsigned int, signed short) = v17;
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned short v23 (signed char, unsigned int, signed int, unsigned int);
extern unsigned short (*v24) (signed char, unsigned int, signed int, unsigned int);
extern void v25 (signed short, signed char, unsigned char);
extern void (*v26) (signed short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed char, signed char, unsigned char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = 0;
unsigned short v120 = 0;
unsigned int v119 = 3U;

unsigned int v21 (void)
{
{
for (;;) {
unsigned int v124 = 7U;
signed int v123 = -1;
unsigned int v122 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -4;
unsigned char v127 = 0;
unsigned char v126 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed short v129, unsigned int v130, signed short v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 1;
signed short v133 = 1;
signed char v132 = 0;
trace++;
switch (trace)
{
case 3: 
return 7;
case 5: 
{
signed char v135;
unsigned int v136;
signed int v137;
unsigned int v138;
unsigned short v139;
v135 = v132 - v132;
v136 = v130 - 0U;
v137 = -2 + -4;
v138 = 0U - v130;
v139 = v23 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 7: 
{
signed char v140;
unsigned int v141;
signed int v142;
unsigned int v143;
unsigned short v144;
v140 = v132 - v132;
v141 = v130 - 6U;
v142 = -3 + -2;
v143 = 7U + 1U;
v144 = v23 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v145, signed short v146, signed int v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 3;
unsigned short v149 = 1;
signed int v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
