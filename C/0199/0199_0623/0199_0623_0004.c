#include <stdlib.h>
signed short v1 (signed char, signed short, signed int, unsigned char);
signed short (*v2) (signed char, signed short, signed int, unsigned char) = v1;
extern unsigned char v3 (unsigned char, unsigned char);
extern unsigned char (*v4) (unsigned char, unsigned char);
signed int v5 (signed char, unsigned short);
signed int (*v6) (signed char, unsigned short) = v5;
extern signed char v9 (signed short, signed short, signed short, signed short);
extern signed char (*v10) (signed short, signed short, signed short, signed short);
extern signed char v11 (unsigned char, signed short, unsigned int);
extern signed char (*v12) (unsigned char, signed short, unsigned int);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned int v15 (unsigned short, unsigned int, signed int, signed short);
unsigned int (*v16) (unsigned short, unsigned int, signed int, signed short) = v15;
extern unsigned char v17 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (unsigned int, signed int, unsigned char, signed char);
void (*v22) (unsigned int, signed int, unsigned char, signed char) = v21;
extern signed int v23 (unsigned short, signed short, unsigned short);
extern signed int (*v24) (unsigned short, signed short, unsigned short);
unsigned char v25 (unsigned int, unsigned int, signed short, unsigned char);
unsigned char (*v26) (unsigned int, unsigned int, signed short, unsigned char) = v25;
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v132 = 1;
signed int v131 = 2;
unsigned char v130 = 6;

unsigned char v25 (unsigned int v133, unsigned int v134, signed short v135, unsigned char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = -3;
unsigned char v138 = 4;
unsigned short v137 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v140, signed int v141, unsigned char v142, signed char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 7;
unsigned short v145 = 7;
unsigned char v144 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v147, unsigned int v148, signed int v149, signed short v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned int v153 = 2U;
signed int v152 = 1;
signed int v151 = 1;
trace++;
switch (trace)
{
case 3: 
return 1U;
default: abort ();
}
}
}
}

signed int v5 (signed char v154, unsigned short v155)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed short v158 = -1;
unsigned short v157 = 6;
signed short v156 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v159, signed short v160, signed int v161, unsigned char v162)
{
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
unsigned int v165 = 4U;
unsigned short v164 = 5;
unsigned char v163 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v166;
v166 = v19 ();
history[history_index++] = (int)v166;
}
break;
case 12: 
return v160;
default: abort ();
}
}
}
}
