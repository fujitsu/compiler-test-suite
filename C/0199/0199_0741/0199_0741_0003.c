#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern signed int v3 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v4) (unsigned int, unsigned char, unsigned char, unsigned short);
extern void v5 (unsigned int, signed char);
extern void (*v6) (unsigned int, signed char);
extern unsigned int v7 (unsigned char, signed short, unsigned short);
extern unsigned int (*v8) (unsigned char, signed short, unsigned short);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern unsigned short v11 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed char, unsigned char, signed short);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed int v15 (signed int, signed int, signed char);
extern signed int (*v16) (signed int, signed int, signed char);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
signed char v21 (unsigned char, signed int, signed int);
signed char (*v22) (unsigned char, signed int, signed int) = v21;
void v23 (signed int, unsigned int, signed char);
void (*v24) (signed int, unsigned int, signed char) = v23;
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
extern unsigned char v27 (unsigned short, unsigned int, signed char);
extern unsigned char (*v28) (unsigned short, unsigned int, signed char);
unsigned short v29 (unsigned short, signed char, unsigned short, signed char);
unsigned short (*v30) (unsigned short, signed char, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 3;
unsigned int v127 = 1U;
unsigned short v126 = 2;

unsigned short v29 (unsigned short v129, signed char v130, unsigned short v131, signed char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -4;
unsigned short v134 = 6;
signed char v133 = -3;
trace++;
switch (trace)
{
case 4: 
return v134;
case 6: 
return 0;
case 8: 
return 4;
case 10: 
return v129;
default: abort ();
}
}
}
}

void v23 (signed int v136, unsigned int v137, signed char v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = -4;
unsigned short v140 = 2;
signed char v139 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned char v142, signed int v143, signed int v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 2U;
signed short v146 = 1;
signed char v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned char v151 = 6;
signed short v150 = -4;
unsigned short v149 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v152;
signed char v153;
unsigned char v154;
signed short v155;
unsigned short v156;
v152 = v151 - v151;
v153 = -4 - -3;
v154 = v151 + v151;
v155 = -3 - v150;
v156 = v11 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
