#include <stdlib.h>
extern signed short v1 (unsigned int, signed int, unsigned short);
extern signed short (*v2) (unsigned int, signed int, unsigned short);
extern void v5 (signed char, signed int, unsigned short, unsigned short);
extern void (*v6) (signed char, signed int, unsigned short, unsigned short);
extern signed char v7 (signed int, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned char, unsigned short);
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
signed int v11 (unsigned int, signed int, unsigned short, signed int);
signed int (*v12) (unsigned int, signed int, unsigned short, signed int) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
unsigned char v17 (signed int, signed char);
unsigned char (*v18) (signed int, signed char) = v17;
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned char v23 (signed short, signed int, signed int, signed int);
extern unsigned char (*v24) (signed short, signed int, signed int, signed int);
extern unsigned short v25 (signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (signed char, unsigned short, unsigned int);
extern signed short v27 (signed int, unsigned short);
extern signed short (*v28) (signed int, unsigned short);
extern unsigned int v29 (unsigned short, signed short, signed short);
extern unsigned int (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v124 = 3U;
signed char v123 = -2;
unsigned char v122 = 7;

unsigned char v17 (signed int v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 2;
signed short v128 = -4;
signed char v127 = -2;
trace++;
switch (trace)
{
case 10: 
return v129;
default: abort ();
}
}
}
}

signed int v11 (unsigned int v130, signed int v131, unsigned short v132, signed int v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = -2;
unsigned short v135 = 3;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
case 3: 
{
signed int v137;
unsigned short v138;
signed short v139;
v137 = v133 + v133;
v138 = v135 - v135;
v139 = v27 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 5: 
return v133;
default: abort ();
}
}
}
}
