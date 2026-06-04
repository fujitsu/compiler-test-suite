#include <stdlib.h>
unsigned char v1 (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned char (*v2) (unsigned char, unsigned int, unsigned char, unsigned short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned short, signed int, signed int);
unsigned short v7 (signed short, signed short, unsigned char);
unsigned short (*v8) (signed short, signed short, unsigned char) = v7;
extern unsigned char v9 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char (*v10) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short v11 (unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int);
extern signed int v13 (unsigned char, signed short, signed char);
extern signed int (*v14) (unsigned char, signed short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
void v19 (unsigned int, unsigned char, signed short, unsigned int);
void (*v20) (unsigned int, unsigned char, signed short, unsigned int) = v19;
extern unsigned short v21 (unsigned int, unsigned char);
extern unsigned short (*v22) (unsigned int, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
void v25 (signed short, unsigned int);
void (*v26) (signed short, unsigned int) = v25;
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 2;
unsigned int v121 = 7U;
unsigned short v120 = 7;

unsigned int v27 (void)
{
{
for (;;) {
signed int v125 = 0;
unsigned char v124 = 1;
unsigned char v123 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed short v126, unsigned int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -1;
unsigned int v129 = 4U;
unsigned int v128 = 7U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

void v19 (unsigned int v131, unsigned char v132, signed short v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -3;
signed char v136 = -3;
unsigned int v135 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v138, signed short v139, unsigned char v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 3;
signed short v142 = -4;
signed char v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v144, unsigned int v145, unsigned char v146, unsigned short v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = 1;
unsigned int v149 = 2U;
signed short v148 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v151;
unsigned short v152;
signed int v153;
unsigned short v154;
v151 = 7U + 0U;
v152 = v147 - 0;
v153 = v150 - 0;
v154 = v11 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 20: 
return v146;
default: abort ();
}
}
}
}
