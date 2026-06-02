#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed int v7 (unsigned int, signed int, unsigned int, signed char);
extern signed int (*v8) (unsigned int, signed int, unsigned int, signed char);
unsigned int v9 (signed int, unsigned int, signed int);
unsigned int (*v10) (signed int, unsigned int, signed int) = v9;
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char, signed int, unsigned char);
extern signed short v15 (signed int, unsigned int, signed char, unsigned int);
extern signed short (*v16) (signed int, unsigned int, signed char, unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
unsigned int v19 (signed short, unsigned short, signed short, signed int);
unsigned int (*v20) (signed short, unsigned short, signed short, signed int) = v19;
unsigned short v21 (signed char, signed char, unsigned char, signed int);
unsigned short (*v22) (signed char, signed char, unsigned char, signed int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (unsigned char, unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned char, unsigned int, signed short);
signed short v27 (signed int, signed short);
signed short (*v28) (signed int, signed short) = v27;
signed int v29 (unsigned char, unsigned short);
signed int (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 3U;
signed short v126 = 2;
unsigned char v125 = 0;

signed int v29 (unsigned char v128, unsigned short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 2;
unsigned char v131 = 6;
signed char v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (signed int v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 0;
unsigned short v136 = 2;
unsigned int v135 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v138, signed char v139, unsigned char v140, signed int v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = -1;
signed char v143 = -4;
signed char v142 = -1;
trace++;
switch (trace)
{
case 6: 
return 0;
case 8: 
return 3;
case 10: 
return 4;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v145, unsigned short v146, signed short v147, signed int v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed int v151 = 2;
unsigned short v150 = 2;
signed short v149 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v152;
unsigned char v153;
unsigned int v154;
signed short v155;
v152 = 6 + 7;
v153 = 7 - 5;
v154 = 2U - 0U;
v155 = -4 + v145;
v25 (v152, v153, v154, v155);
}
break;
case 3: 
{
signed short v156;
v156 = v23 ();
history[history_index++] = (int)v156;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

unsigned int v9 (signed int v157, unsigned int v158, signed int v159)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned short v162 = 2;
signed int v161 = 2;
signed int v160 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
