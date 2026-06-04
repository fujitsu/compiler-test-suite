#include <stdlib.h>
extern unsigned char v1 (signed short, signed char);
extern unsigned char (*v2) (signed short, signed char);
signed short v3 (signed char, signed int, unsigned char, signed char);
signed short (*v4) (signed char, signed int, unsigned char, signed char) = v3;
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
unsigned short v7 (signed char, signed int, signed char, signed int);
unsigned short (*v8) (signed char, signed int, signed char, signed int) = v7;
extern signed char v9 (unsigned short, unsigned char, signed int);
extern signed char (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed int, unsigned char);
extern signed int (*v12) (unsigned short, signed int, unsigned char);
extern void v13 (signed int, signed int, unsigned int);
extern void (*v14) (signed int, signed int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (signed int, signed int, signed char, unsigned short);
extern signed short (*v18) (signed int, signed int, signed char, unsigned short);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (signed int, unsigned short, unsigned short, signed char);
extern unsigned char (*v24) (signed int, unsigned short, unsigned short, signed char);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
signed int v27 (signed int, unsigned char);
signed int (*v28) (signed int, unsigned char) = v27;
extern signed short v29 (signed char, unsigned char, signed short, signed short);
extern signed short (*v30) (signed char, unsigned char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v124 = 6;
signed int v123 = 1;
unsigned char v122 = 6;

signed int v27 (signed int v125, unsigned char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 4;
signed short v128 = 1;
signed char v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v130, signed int v131, signed char v132, signed int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 3U;
signed int v135 = 0;
signed char v134 = -3;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v137;
unsigned char v138;
v137 = 5 - 7;
v138 = v25 (v137);
history[history_index++] = (int)v138;
}
break;
case 5: 
{
unsigned short v139;
unsigned char v140;
v139 = 2 + 6;
v140 = v25 (v139);
history[history_index++] = (int)v140;
}
break;
case 7: 
{
unsigned short v141;
unsigned char v142;
v141 = 5 + 6;
v142 = v25 (v141);
history[history_index++] = (int)v142;
}
break;
case 9: 
{
signed char v143;
unsigned char v144;
signed short v145;
signed short v146;
signed short v147;
v143 = v134 - v130;
v144 = 2 + 2;
v145 = 1 - -2;
v146 = -3 + 0;
v147 = v29 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed short v3 (signed char v148, signed int v149, unsigned char v150, signed char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 2;
signed short v153 = 3;
signed short v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
