#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
void v3 (void);
void (*v4) (void) = v3;
static signed char v5 (signed char, signed int, signed short, signed short);
static signed char (*v6) (signed char, signed int, signed short, signed short) = v5;
extern unsigned short v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern void v13 (unsigned short, signed char, signed int);
extern void (*v14) (unsigned short, signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (unsigned short, signed short, signed int);
extern signed short (*v18) (unsigned short, signed short, signed int);
extern signed char v19 (unsigned int, unsigned int, signed char, unsigned int);
extern signed char (*v20) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (signed short, unsigned int, signed int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed int, signed char);
extern signed int v29 (signed short, signed int, signed char);
extern signed int (*v30) (signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -3;
unsigned short v125 = 4;
signed short v124 = 3;

static signed char v5 (signed char v127, signed int v128, signed short v129, signed short v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 2;
signed short v132 = -1;
signed int v131 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed int v134;
v134 = v131 - 0;
v11 (v134);
}
break;
case 4: 
{
unsigned short v135;
v135 = v21 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
{
unsigned short v136;
v136 = v21 ();
history[history_index++] = (int)v136;
}
break;
case 14: 
return v127;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v139 = 2;
signed char v138 = -1;
unsigned char v137 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v140;
signed int v141;
signed short v142;
signed short v143;
signed char v144;
v140 = -2 + v138;
v141 = 2 - 0;
v142 = 0 + -4;
v143 = -3 - -3;
v144 = v5 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
