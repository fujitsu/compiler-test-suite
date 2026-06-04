#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed int, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed int, signed int);
extern signed int v3 (signed int, unsigned int, signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int, signed int, unsigned int);
void v5 (unsigned short, signed int, unsigned char);
void (*v6) (unsigned short, signed int, unsigned char) = v5;
void v7 (signed int, signed short, unsigned short, unsigned int);
void (*v8) (signed int, signed short, unsigned short, unsigned int) = v7;
signed int v9 (signed int, unsigned char, unsigned char, unsigned char);
signed int (*v10) (signed int, unsigned char, unsigned char, unsigned char) = v9;
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned short);
extern void (*v16) (signed short, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned int);
extern unsigned int v21 (unsigned char, signed int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed int, signed char, unsigned int);
extern unsigned int v23 (unsigned short, signed short, signed char, unsigned char);
extern unsigned int (*v24) (unsigned short, signed short, signed char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed short v27 (unsigned short, signed int, unsigned short, unsigned char);
signed short (*v28) (unsigned short, signed int, unsigned short, unsigned char) = v27;
extern unsigned int v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 2U;
unsigned int v122 = 6U;
signed short v121 = 0;

signed short v27 (unsigned short v124, signed int v125, unsigned short v126, unsigned char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 3;
signed int v129 = -4;
unsigned char v128 = 0;
trace++;
switch (trace)
{
case 5: 
return 1;
case 7: 
return -2;
case 9: 
return -4;
default: abort ();
}
}
}
}

signed int v9 (signed int v131, unsigned char v132, unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 0U;
signed short v136 = -4;
unsigned short v135 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v138;
signed int v139;
unsigned int v140;
v138 = 1U + 0U;
v139 = -1 - -1;
v140 = v11 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 3: 
{
unsigned short v141;
unsigned int v142;
unsigned int v143;
v141 = 4 + 4;
v142 = v137 + v137;
v143 = v19 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}

void v7 (signed int v144, signed short v145, unsigned short v146, unsigned int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 7;
signed int v149 = 2;
unsigned char v148 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v151, signed int v152, unsigned char v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned char v156 = 5;
unsigned char v155 = 4;
signed char v154 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
