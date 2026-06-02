#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
void v3 (unsigned int);
void (*v4) (unsigned int) = v3;
extern void v5 (signed short, unsigned char, unsigned short);
extern void (*v6) (signed short, unsigned char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v8) (unsigned char, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern unsigned int v11 (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v21 (signed short, signed short);
extern signed int (*v22) (signed short, signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
signed char v25 (unsigned short, signed short, signed char, signed int);
signed char (*v26) (unsigned short, signed short, signed char, signed int) = v25;
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v126 = 0;
signed char v125 = -2;
unsigned short v124 = 2;

signed char v25 (unsigned short v127, signed short v128, signed char v129, signed int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 0;
signed int v132 = 1;
signed char v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
signed char v136 = -4;
unsigned int v135 = 2U;
signed int v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -3;
signed char v139 = -2;
signed short v138 = -1;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v141;
signed short v142;
signed char v143;
v141 = 4 - 1;
v142 = -3 + v140;
v143 = v15 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 10: 
{
unsigned char v144;
signed short v145;
signed char v146;
v144 = 5 - 2;
v145 = v140 + v140;
v146 = v15 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 12: 
return;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed int v149 = 1;
unsigned short v148 = 6;
signed int v147 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v150;
unsigned char v151;
unsigned short v152;
signed int v153;
unsigned int v154;
v150 = 1U - 5U;
v151 = 6 + 2;
v152 = 3 + v148;
v153 = -2 - v149;
v154 = v11 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 20: 
return 4U;
default: abort ();
}
}
}
}
