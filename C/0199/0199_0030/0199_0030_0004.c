#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned int);
extern signed short (*v2) (signed short, unsigned char, unsigned int);
extern signed int v3 (unsigned int, signed char);
extern signed int (*v4) (unsigned int, signed char);
extern unsigned char v5 (signed char, unsigned short, signed short);
extern unsigned char (*v6) (signed char, unsigned short, signed short);
void v7 (void);
void (*v8) (void) = v7;
unsigned int v9 (signed short, unsigned short);
unsigned int (*v10) (signed short, unsigned short) = v9;
extern signed short v11 (unsigned char, unsigned int, signed short, signed short);
extern signed short (*v12) (unsigned char, unsigned int, signed short, signed short);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern signed char v17 (signed short, signed char, signed short);
extern signed char (*v18) (signed short, signed char, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed int v21 (unsigned char, signed int, unsigned short, unsigned int);
signed int (*v22) (unsigned char, signed int, unsigned short, unsigned int) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed short, unsigned char, unsigned char, unsigned int);
extern void (*v28) (signed short, unsigned char, unsigned char, unsigned int);
extern void v29 (signed char, signed short, signed short);
extern void (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v132 = 6U;
unsigned short v131 = 3;
signed int v130 = -2;

signed int v21 (unsigned char v133, signed int v134, unsigned short v135, unsigned int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = 1;
unsigned char v138 = 6;
signed short v137 = 2;
trace++;
switch (trace)
{
case 3: 
return v134;
case 6: 
return 1;
case 8: 
{
signed short v140;
unsigned char v141;
unsigned char v142;
unsigned int v143;
v140 = -4 - 2;
v141 = 4 - v133;
v142 = 6 + 2;
v143 = v136 - 0U;
v27 (v140, v141, v142, v143);
}
break;
case 12: 
return v139;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v144, unsigned short v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = 2;
signed short v147 = 3;
signed short v146 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed short v151 = 1;
signed char v150 = 0;
signed char v149 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
