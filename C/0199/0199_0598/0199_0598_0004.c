#include <stdlib.h>
signed short v1 (signed short, signed int);
signed short (*v2) (signed short, signed int) = v1;
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern signed short v5 (unsigned short, signed char);
extern signed short (*v6) (unsigned short, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v10) (signed int, unsigned short, signed char, unsigned short);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned char v13 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed char v21 (unsigned char, unsigned char, signed short, signed short);
signed char (*v22) (unsigned char, unsigned char, signed short, signed short) = v21;
extern void v23 (unsigned short, signed int, signed int, unsigned short);
extern void (*v24) (unsigned short, signed int, signed int, unsigned short);
signed char v25 (unsigned char, signed int, unsigned int);
signed char (*v26) (unsigned char, signed int, unsigned int) = v25;
extern signed short v27 (signed char, unsigned char, unsigned int);
extern signed short (*v28) (signed char, unsigned char, unsigned int);
extern unsigned int v29 (unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v120 = 7U;
signed short v119 = 0;
unsigned int v118 = 7U;

signed char v25 (unsigned char v121, signed int v122, unsigned int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 4;
unsigned int v125 = 5U;
unsigned int v124 = 4U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v127;
unsigned char v128;
unsigned int v129;
v127 = v126 + 7;
v128 = 4 - 3;
v129 = v29 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 10: 
return 0;
default: abort ();
}
}
}
}

signed char v21 (unsigned char v130, unsigned char v131, signed short v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 1;
unsigned int v135 = 4U;
signed short v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v137, signed int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = 0;
unsigned int v140 = 5U;
unsigned short v139 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed int v142;
unsigned short v143;
signed char v144;
unsigned short v145;
signed short v146;
v142 = v141 - v138;
v143 = v139 + 0;
v144 = 0 + -2;
v145 = 6 - 7;
v146 = v9 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 2: 
{
unsigned short v147;
signed char v148;
signed short v149;
v147 = 6 - v139;
v148 = 0 + -3;
v149 = v5 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return v137;
default: abort ();
}
}
}
}
