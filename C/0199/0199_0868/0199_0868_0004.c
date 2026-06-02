#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned short v5 (signed char, signed short, unsigned char);
extern unsigned short (*v6) (signed char, signed short, unsigned char);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
signed int v9 (unsigned int, signed int, unsigned int);
signed int (*v10) (unsigned int, signed int, unsigned int) = v9;
extern unsigned short v11 (unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned char, unsigned int);
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
unsigned short v15 (unsigned short, unsigned char, unsigned short, signed int);
unsigned short (*v16) (unsigned short, unsigned char, unsigned short, signed int) = v15;
extern unsigned int v17 (unsigned short, signed short, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char, unsigned char);
extern unsigned char v19 (unsigned short, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned char, unsigned char);
extern unsigned short v21 (unsigned char, signed short, signed int);
extern unsigned short (*v22) (unsigned char, signed short, signed int);
extern void v23 (void);
extern void (*v24) (void);
unsigned short v25 (signed short, signed int, unsigned int);
unsigned short (*v26) (signed short, signed int, unsigned int) = v25;
extern unsigned int v27 (signed short, signed char, unsigned int);
extern unsigned int (*v28) (signed short, signed char, unsigned int);
void v29 (unsigned char, signed int, unsigned int);
void (*v30) (unsigned char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v129 = -3;
signed char v128 = 0;
unsigned char v127 = 4;

void v29 (unsigned char v130, signed int v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 0;
signed int v134 = 1;
signed short v133 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed short v136, signed int v137, unsigned int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -3;
signed char v140 = -3;
unsigned char v139 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v142, unsigned char v143, unsigned short v144, signed int v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 0;
signed char v147 = -2;
signed int v146 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v149, signed int v150, unsigned int v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 3;
unsigned short v153 = 7;
unsigned int v152 = 7U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v155;
v155 = v7 ();
history[history_index++] = (int)v155;
}
break;
case 19: 
return v150;
default: abort ();
}
}
}
}
