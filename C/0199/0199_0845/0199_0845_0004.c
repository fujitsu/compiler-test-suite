#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned int);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned int);
extern signed char v3 (signed char, unsigned int, signed short);
extern signed char (*v4) (signed char, unsigned int, signed short);
void v5 (void);
void (*v6) (void) = v5;
signed int v9 (void);
signed int (*v10) (void) = v9;
void v11 (unsigned int, signed short, unsigned short, signed short);
void (*v12) (unsigned int, signed short, unsigned short, signed short) = v11;
extern signed char v13 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v14) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (unsigned int, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned int, signed short, signed int, signed short);
void v19 (unsigned short, signed short);
void (*v20) (unsigned short, signed short) = v19;
unsigned short v21 (unsigned char, unsigned int);
unsigned short (*v22) (unsigned char, unsigned int) = v21;
signed char v23 (signed char, signed short);
signed char (*v24) (signed char, signed short) = v23;
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned int v27 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v28) (signed char, unsigned int, signed char, signed char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = -4;
unsigned short v118 = 3;
unsigned int v117 = 6U;

signed char v23 (signed char v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 2;
signed short v123 = 3;
unsigned char v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 0;
unsigned int v128 = 7U;
unsigned int v127 = 5U;
trace++;
switch (trace)
{
case 1: 
return 0;
case 4: 
return 7;
default: abort ();
}
}
}
}

void v19 (unsigned short v130, signed short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 3;
signed char v133 = 0;
unsigned short v132 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v135, signed short v136, unsigned short v137, signed short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 6;
signed int v140 = -4;
signed char v139 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v144 = 6;
signed char v143 = 3;
unsigned char v142 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v145;
signed short v146;
signed int v147;
signed short v148;
unsigned short v149;
v145 = 2U + 6U;
v146 = 3 - -1;
v147 = -1 + -1;
v148 = -2 + -4;
v149 = v17 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 10: 
return 3;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed char v152 = -3;
signed char v151 = 2;
signed short v150 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
