#include <stdlib.h>
unsigned int v3 (unsigned short, signed char, signed short, unsigned int);
unsigned int (*v4) (unsigned short, signed char, signed short, unsigned int) = v3;
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
unsigned short v7 (signed int, signed short);
unsigned short (*v8) (signed int, signed short) = v7;
unsigned short v9 (signed char, unsigned char, unsigned int);
unsigned short (*v10) (signed char, unsigned char, unsigned int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern unsigned short v15 (signed int, unsigned int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned int, unsigned char);
extern signed short v17 (signed char, signed char, signed int);
extern signed short (*v18) (signed char, signed char, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed int v27 (signed int, unsigned short, signed int, unsigned int);
extern signed int (*v28) (signed int, unsigned short, signed int, unsigned int);
extern signed char v29 (signed int, signed char, signed int, unsigned short);
extern signed char (*v30) (signed int, signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v123 = 6;
signed char v122 = -1;
signed char v121 = -4;

unsigned short v9 (signed char v124, unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 2U;
signed char v128 = -1;
unsigned char v127 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v130, signed short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -3;
signed int v133 = -1;
unsigned char v132 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed int v135;
unsigned int v136;
unsigned char v137;
unsigned short v138;
v135 = v130 - v133;
v136 = 4U + 7U;
v137 = v132 + v132;
v138 = v15 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 9: 
{
signed int v139;
unsigned int v140;
unsigned char v141;
unsigned short v142;
v139 = 3 + v133;
v140 = 1U - 5U;
v141 = 5 - 1;
v142 = v15 (v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v143, signed char v144, signed short v145, unsigned int v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = -3;
signed char v148 = -2;
unsigned short v147 = 2;
trace++;
switch (trace)
{
case 4: 
return 6U;
default: abort ();
}
}
}
}
