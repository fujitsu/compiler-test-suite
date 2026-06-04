#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed char);
extern unsigned int (*v2) (signed char, signed int, signed char);
extern unsigned char v3 (signed short, signed char, signed int, signed short);
extern unsigned char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned short v9 (unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed int v13 (signed int, signed char, signed short);
extern signed int (*v14) (signed int, signed char, signed short);
extern unsigned int v15 (signed int, unsigned short, unsigned int);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned short v19 (signed short, unsigned int, signed int, unsigned char);
extern unsigned short (*v20) (signed short, unsigned int, signed int, unsigned char);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char, unsigned char);
signed int v27 (unsigned short, signed short, unsigned int, unsigned char);
signed int (*v28) (unsigned short, signed short, unsigned int, unsigned char) = v27;
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 3U;
signed char v124 = -2;
unsigned int v123 = 1U;

signed int v27 (unsigned short v126, signed short v127, unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = -1;
signed short v131 = -2;
unsigned int v130 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
unsigned int v135 = 5U;
unsigned int v134 = 3U;
unsigned short v133 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v136;
unsigned short v137;
unsigned int v138;
v136 = -3 - 3;
v137 = 7 + 2;
v138 = v21 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 3: 
{
signed int v139;
signed char v140;
unsigned int v141;
unsigned short v142;
unsigned int v143;
v139 = 1 + 3;
v140 = 0 + 2;
v141 = v135 + v135;
v142 = v133 + 7;
v143 = v23 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 5: 
{
signed int v144;
signed char v145;
unsigned int v146;
unsigned short v147;
unsigned int v148;
v144 = 3 - 0;
v145 = 2 - 0;
v146 = v135 - v135;
v147 = 6 - 0;
v148 = v23 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned int v151 = 2U;
unsigned char v150 = 0;
signed short v149 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
