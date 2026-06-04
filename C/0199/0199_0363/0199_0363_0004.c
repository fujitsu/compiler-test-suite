#include <stdlib.h>
extern signed int v1 (signed short, signed int, signed int);
extern signed int (*v2) (signed short, signed int, signed int);
signed short v3 (signed int, unsigned char, unsigned int, unsigned char);
signed short (*v4) (signed int, unsigned char, unsigned int, unsigned char) = v3;
static unsigned char v5 (signed char, signed char);
static unsigned char (*v6) (signed char, signed char) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned char, unsigned short);
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned int);
signed short v13 (unsigned short, signed int);
signed short (*v14) (unsigned short, signed int) = v13;
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern unsigned int v17 (signed char, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int, signed char, unsigned int);
extern signed int v19 (unsigned char, unsigned short, signed char, unsigned char);
extern signed int (*v20) (unsigned char, unsigned short, signed char, unsigned char);
extern unsigned int v21 (signed char, signed int);
extern unsigned int (*v22) (signed char, signed int);
extern signed short v23 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v24) (signed int, unsigned short, signed int, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = -1;
signed short v129 = 2;
unsigned int v128 = 3U;

signed short v15 (unsigned int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 5U;
signed char v133 = -2;
unsigned char v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v135, signed int v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 2;
unsigned short v138 = 2;
signed char v137 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (signed char v140, signed char v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = -2;
unsigned char v143 = 4;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v145;
v145 = v25 ();
history[history_index++] = (int)v145;
}
break;
case 14: 
return v143;
default: abort ();
}
}
}
}

signed short v3 (signed int v146, unsigned char v147, unsigned int v148, unsigned char v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 7;
unsigned char v151 = 7;
signed char v150 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v153;
signed int v154;
unsigned int v155;
v153 = v150 + -1;
v154 = 2 + v146;
v155 = v21 (v153, v154);
history[history_index++] = (int)v155;
}
break;
case 7: 
{
signed char v156;
signed char v157;
unsigned char v158;
v156 = v150 - v150;
v157 = v150 - -2;
v158 = v5 (v156, v157);
history[history_index++] = (int)v158;
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}
