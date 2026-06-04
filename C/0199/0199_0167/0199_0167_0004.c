#include <stdlib.h>
extern void v1 (signed short, unsigned short, signed short, signed char);
extern void (*v2) (signed short, unsigned short, signed short, signed char);
void v3 (signed short, unsigned int, unsigned short, signed int);
void (*v4) (signed short, unsigned int, unsigned short, signed int) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (signed int, unsigned int, unsigned int, unsigned char);
extern void (*v10) (signed int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (unsigned int, unsigned char, signed short);
extern signed short (*v12) (unsigned int, unsigned char, signed short);
extern void v13 (unsigned int, signed int, signed int);
extern void (*v14) (unsigned int, signed int, signed int);
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned short v17 (unsigned int, signed int, unsigned short, signed char);
extern unsigned short (*v18) (unsigned int, signed int, unsigned short, signed char);
signed int v19 (signed short, unsigned int, signed int);
signed int (*v20) (signed short, unsigned int, signed int) = v19;
unsigned char v21 (unsigned char, unsigned int);
unsigned char (*v22) (unsigned char, unsigned int) = v21;
extern signed int v23 (signed short, unsigned short, signed int, unsigned int);
extern signed int (*v24) (signed short, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, unsigned char, signed int);
extern signed short (*v26) (signed short, unsigned char, signed int);
extern unsigned short v27 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v28) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 3;
unsigned int v125 = 6U;
unsigned int v124 = 1U;

unsigned char v21 (unsigned char v127, unsigned int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 5;
unsigned short v130 = 4;
unsigned short v129 = 4;
trace++;
switch (trace)
{
case 5: 
{
signed short v132;
unsigned char v133;
signed int v134;
signed short v135;
v132 = 0 - -1;
v133 = v127 + v127;
v134 = -4 - 0;
v135 = v25 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 7: 
{
unsigned int v136;
unsigned int v137;
unsigned int v138;
unsigned short v139;
v136 = v128 + 3U;
v137 = 7U + v128;
v138 = 7U - 0U;
v139 = v27 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v19 (signed short v140, unsigned int v141, signed int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 0U;
unsigned short v144 = 0;
unsigned int v143 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v148 = 2;
unsigned char v147 = 7;
unsigned int v146 = 6U;
trace++;
switch (trace)
{
case 3: 
return v148;
default: abort ();
}
}
}
}

void v3 (signed short v149, unsigned int v150, unsigned short v151, signed int v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed char v155 = 0;
signed int v154 = 2;
unsigned char v153 = 2;
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
