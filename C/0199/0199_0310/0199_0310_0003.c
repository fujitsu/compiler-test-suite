#include <stdlib.h>
void v1 (unsigned short, unsigned char, unsigned int, signed int);
void (*v2) (unsigned short, unsigned char, unsigned int, signed int) = v1;
extern unsigned int v3 (unsigned int, signed int, signed int, unsigned char);
extern unsigned int (*v4) (unsigned int, signed int, signed int, unsigned char);
extern signed int v5 (signed short, signed char, signed int, unsigned int);
extern signed int (*v6) (signed short, signed char, signed int, unsigned int);
extern unsigned char v7 (unsigned char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed short, signed short);
unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned char);
unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned char) = v9;
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern signed int v15 (signed int, unsigned short, signed int, signed short);
extern signed int (*v16) (signed int, unsigned short, signed int, signed short);
extern unsigned int v17 (unsigned char, unsigned int, signed short, signed int);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
unsigned short v23 (signed int, signed short, unsigned short, signed short);
unsigned short (*v24) (signed int, signed short, unsigned short, signed short) = v23;
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 7;
unsigned short v128 = 0;
unsigned short v127 = 3;

unsigned short v23 (signed int v130, signed short v131, unsigned short v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 3;
unsigned char v135 = 4;
signed short v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v137, unsigned short v138, unsigned int v139, unsigned char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 2;
signed short v142 = 2;
signed char v141 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v144, unsigned char v145, unsigned int v146, signed int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 2;
signed int v149 = -1;
unsigned short v148 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v151;
unsigned int v152;
v151 = -3 + v147;
v152 = v29 (v151);
history[history_index++] = (int)v152;
}
break;
case 2: 
{
unsigned int v153;
signed int v154;
signed int v155;
unsigned char v156;
unsigned int v157;
v153 = 1U - v146;
v154 = v147 - v149;
v155 = v147 - -1;
v156 = v150 + v150;
v157 = v3 (v153, v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 7: 
{
signed int v158;
unsigned int v159;
v158 = v149 + -4;
v159 = 7U - v146;
v25 (v158, v159);
}
break;
case 13: 
return;
case 16: 
return;
default: abort ();
}
}
}
}
