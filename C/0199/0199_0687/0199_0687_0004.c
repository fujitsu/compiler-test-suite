#include <stdlib.h>
unsigned char v1 (signed int, signed char, signed int, unsigned char);
unsigned char (*v2) (signed int, signed char, signed int, unsigned char) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed int, signed short, signed char);
extern void (*v8) (signed int, signed short, signed char);
void v9 (signed int, signed int, unsigned char);
void (*v10) (signed int, signed int, unsigned char) = v9;
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned short, unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed char, unsigned int, signed short, unsigned char);
extern unsigned char (*v20) (signed char, unsigned int, signed short, unsigned char);
static void v21 (signed short, unsigned char);
static void (*v22) (signed short, unsigned char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v27 (signed short, unsigned int, signed short);
extern unsigned short (*v28) (signed short, unsigned int, signed short);
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v128 = 5U;
signed int v127 = -3;
signed int v126 = -2;

static void v21 (signed short v129, unsigned char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 4;
signed int v132 = 2;
unsigned int v131 = 3U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v134;
v134 = v5 ();
history[history_index++] = (int)v134;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}

void v9 (signed int v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 5;
unsigned short v139 = 4;
unsigned char v138 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v141;
unsigned char v142;
signed char v143;
unsigned int v144;
v141 = 2U + 3U;
v142 = v137 - v138;
v143 = 1 + -2;
v144 = v11 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v145, signed char v146, signed int v147, unsigned char v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 7;
signed int v150 = 3;
signed char v149 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v152;
unsigned char v153;
v152 = -1 + -2;
v153 = 0 - 3;
v21 (v152, v153);
}
break;
case 18: 
return v148;
default: abort ();
}
}
}
}
