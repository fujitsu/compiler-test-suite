#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern signed char v3 (signed int, signed int, signed int, signed short);
extern signed char (*v4) (signed int, signed int, signed int, signed short);
extern void v5 (signed short, signed int);
extern void (*v6) (signed short, signed int);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
static signed short v9 (signed short, signed short);
static signed short (*v10) (signed short, signed short) = v9;
extern unsigned int v11 (unsigned short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern signed char v17 (signed char, signed int, signed char, signed int);
extern signed char (*v18) (signed char, signed int, signed char, signed int);
extern unsigned int v19 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, signed char);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned char, signed short, signed short);
extern signed int (*v26) (unsigned char, signed short, signed short);
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
unsigned int v29 (unsigned char, signed int, unsigned int, unsigned short);
unsigned int (*v30) (unsigned char, signed int, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = -1;
signed char v128 = 0;
unsigned int v127 = 5U;

unsigned int v29 (unsigned char v130, signed int v131, unsigned int v132, unsigned short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed short v136 = 0;
unsigned char v135 = 5;
signed char v134 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed int v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
signed short v139 = 0;
unsigned int v138 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v9 (signed short v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed char v145 = -3;
unsigned int v144 = 0U;
unsigned char v143 = 6;
trace++;
switch (trace)
{
case 4: 
{
signed int v146;
unsigned int v147;
unsigned short v148;
v146 = -2 + -2;
v147 = 5U - v144;
v148 = v21 (v146, v147);
history[history_index++] = (int)v148;
}
break;
case 16: 
return v142;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v151 = 7;
unsigned short v150 = 3;
unsigned short v149 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed short v152;
signed short v153;
signed short v154;
v152 = 3 + -2;
v153 = -2 - 0;
v154 = v9 (v152, v153);
history[history_index++] = (int)v154;
}
break;
case 17: 
return 2;
default: abort ();
}
}
}
}
