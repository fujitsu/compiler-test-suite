#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern void v5 (signed int, unsigned short, unsigned char);
extern void (*v6) (signed int, unsigned short, unsigned char);
extern unsigned char v7 (signed int, unsigned short);
extern unsigned char (*v8) (signed int, unsigned short);
extern unsigned char v9 (signed int, signed int, unsigned int);
extern unsigned char (*v10) (signed int, signed int, unsigned int);
unsigned int v11 (unsigned char, signed char, signed char);
unsigned int (*v12) (unsigned char, signed char, signed char) = v11;
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
signed char v15 (unsigned short, unsigned int);
signed char (*v16) (unsigned short, unsigned int) = v15;
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v127 = 2;
signed char v126 = 1;
unsigned char v125 = 2;

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v130 = 2;
signed char v129 = 3;
signed char v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v131, unsigned int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 2U;
signed short v134 = 1;
unsigned int v133 = 0U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v136;
signed int v137;
unsigned short v138;
unsigned int v139;
v136 = 4 - v131;
v137 = -4 + 2;
v138 = v131 + 7;
v139 = v135 + 4U;
v19 (v136, v137, v138, v139);
}
break;
case 4: 
{
unsigned short v140;
signed int v141;
unsigned short v142;
unsigned int v143;
v140 = 3 - 3;
v141 = 2 + -2;
v142 = 6 + 2;
v143 = v133 - v132;
v19 (v140, v141, v142, v143);
}
break;
case 18: 
return 3;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v144, signed char v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed char v149 = 2;
signed short v148 = -4;
unsigned short v147 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
