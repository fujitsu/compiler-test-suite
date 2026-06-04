#include <stdlib.h>
signed char v1 (unsigned char);
signed char (*v2) (unsigned char) = v1;
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v6) (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned int v7 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed int, signed int);
extern unsigned short v9 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short, signed short, unsigned short);
extern signed short v11 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v12) (unsigned int, signed char, signed char, unsigned char);
extern unsigned short v13 (signed int, signed int, unsigned char);
extern unsigned short (*v14) (signed int, signed int, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern void v17 (unsigned int, signed char, unsigned int);
extern void (*v18) (unsigned int, signed char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned short, signed char);
extern signed int (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
unsigned char v25 (unsigned short, unsigned int);
unsigned char (*v26) (unsigned short, unsigned int) = v25;
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern unsigned char v29 (unsigned char, signed int, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -3;
unsigned short v126 = 2;
unsigned short v125 = 2;

unsigned char v25 (unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 4;
unsigned int v131 = 2U;
signed short v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v135 = 6;
signed int v134 = 0;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed int v138 = -2;
unsigned int v137 = 4U;
signed int v136 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 5;
unsigned char v141 = 1;
unsigned char v140 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v143;
signed char v144;
signed int v145;
v143 = 5 - v142;
v144 = 1 + 1;
v145 = v21 (v143, v144);
history[history_index++] = (int)v145;
}
break;
case 2: 
{
unsigned int v146;
unsigned short v147;
signed short v148;
unsigned short v149;
unsigned short v150;
v146 = 0U - 3U;
v147 = v142 + v142;
v148 = -4 - 1;
v149 = v142 + v142;
v150 = v9 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 4: 
{
signed int v151;
signed int v152;
unsigned char v153;
unsigned short v154;
v151 = 2 - -3;
v152 = 3 + 3;
v153 = 1 + 7;
v154 = v13 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
