#include <stdlib.h>
void v1 (signed int, unsigned short);
void (*v2) (signed int, unsigned short) = v1;
signed char v3 (signed int, unsigned short, signed int);
signed char (*v4) (signed int, unsigned short, signed int) = v3;
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (unsigned char, unsigned int, unsigned char, signed int);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char, signed int);
extern void v9 (unsigned int, signed short, signed char);
extern void (*v10) (unsigned int, signed short, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
signed short v13 (signed short, signed char, signed char, unsigned short);
signed short (*v14) (signed short, signed char, signed char, unsigned short) = v13;
extern signed int v15 (signed char, unsigned char);
extern signed int (*v16) (signed char, unsigned char);
extern void v17 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed short v23 (unsigned short, signed char, unsigned int, signed short);
extern signed short (*v24) (unsigned short, signed char, unsigned int, signed short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed short v27 (signed short, signed char, unsigned char, unsigned short);
extern signed short (*v28) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v128 = 1U;
signed char v127 = -1;
unsigned short v126 = 6;

signed char v25 (void)
{
{
for (;;) {
unsigned int v131 = 1U;
unsigned short v130 = 7;
signed int v129 = -3;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
return -4;
default: abort ();
}
}
}
}

signed short v13 (signed short v132, signed char v133, signed char v134, unsigned short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 2;
signed int v137 = 3;
signed int v136 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v139, unsigned short v140, signed int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 6U;
unsigned char v143 = 5;
signed short v142 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v145, unsigned short v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = -4;
signed char v148 = -3;
signed short v147 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed char v150;
unsigned char v151;
signed int v152;
v150 = v148 + -3;
v151 = 4 - 2;
v152 = v15 (v150, v151);
history[history_index++] = (int)v152;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
