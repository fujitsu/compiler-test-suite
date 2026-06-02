#include <stdlib.h>
extern unsigned char v1 (signed short, signed char, unsigned short, unsigned int);
extern unsigned char (*v2) (signed short, signed char, unsigned short, unsigned int);
extern unsigned char v3 (signed int, signed short, unsigned short, signed int);
extern unsigned char (*v4) (signed int, signed short, unsigned short, signed int);
extern signed char v7 (unsigned char, unsigned short, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned short);
signed short v9 (signed int, signed char, unsigned short);
signed short (*v10) (signed int, signed char, unsigned short) = v9;
extern unsigned short v11 (signed int, signed short, unsigned char, signed char);
extern unsigned short (*v12) (signed int, signed short, unsigned char, signed char);
extern unsigned int v13 (unsigned char, unsigned int, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, signed int);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
unsigned char v27 (signed short, unsigned short, signed char, unsigned char);
unsigned char (*v28) (signed short, unsigned short, signed char, unsigned char) = v27;
extern signed short v29 (signed int, unsigned short, signed int);
extern signed short (*v30) (signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 2;
signed short v127 = -1;
unsigned short v126 = 2;

unsigned char v27 (signed short v129, unsigned short v130, signed char v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -1;
signed char v134 = 2;
signed int v133 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed int v136;
unsigned short v137;
signed int v138;
signed short v139;
v136 = v135 - v133;
v137 = v130 - 5;
v138 = v135 + -2;
v139 = v29 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 13: 
return v132;
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
signed short v142 = 3;
unsigned char v141 = 1;
signed char v140 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -1;
signed short v145 = 2;
unsigned short v144 = 4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed short v9 (signed int v147, signed char v148, unsigned short v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned short v152 = 0;
signed char v151 = -3;
unsigned short v150 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed short v153;
v153 = v19 ();
history[history_index++] = (int)v153;
}
break;
case 7: 
{
signed short v154;
v154 = v19 ();
history[history_index++] = (int)v154;
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}
