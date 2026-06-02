#include <stdlib.h>
unsigned short v1 (unsigned char, signed short, signed short);
unsigned short (*v2) (unsigned char, signed short, signed short) = v1;
extern signed char v3 (signed int, unsigned char, unsigned char, signed short);
extern signed char (*v4) (signed int, unsigned char, unsigned char, signed short);
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
extern void v7 (unsigned short, unsigned char, unsigned int);
extern void (*v8) (unsigned short, unsigned char, unsigned int);
unsigned short v11 (signed int, unsigned int, unsigned char);
unsigned short (*v12) (signed int, unsigned int, unsigned char) = v11;
extern unsigned char v13 (unsigned int, unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned int, unsigned short, signed char, signed short);
extern unsigned short v15 (unsigned char, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed short, signed int);
extern signed short v17 (signed char, signed short, unsigned short, signed int);
extern signed short (*v18) (signed char, signed short, unsigned short, signed int);
extern void v19 (void);
extern void (*v20) (void);
void v21 (signed int, unsigned int, unsigned char, unsigned char);
void (*v22) (signed int, unsigned int, unsigned char, unsigned char) = v21;
extern unsigned char v23 (unsigned short, signed short, signed char, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed char, signed short);
extern void v25 (unsigned char, unsigned short, signed short);
extern void (*v26) (unsigned char, unsigned short, signed short);
extern unsigned char v27 (unsigned int, unsigned char);
extern unsigned char (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v124 = 1;
signed short v123 = 3;
unsigned char v122 = 2;

void v21 (signed int v125, unsigned int v126, unsigned char v127, unsigned char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 4U;
unsigned char v130 = 0;
signed int v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v132, unsigned int v133, unsigned char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = 2;
unsigned short v136 = 6;
signed int v135 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v138, signed short v139, signed short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 1;
signed short v142 = -2;
unsigned short v141 = 7;
trace++;
switch (trace)
{
case 0: 
return 7;
case 1: 
return v141;
case 2: 
{
unsigned int v144;
unsigned char v145;
unsigned char v146;
v144 = 2U - 7U;
v145 = 7 - 2;
v146 = v27 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 4: 
{
signed int v147;
unsigned char v148;
unsigned char v149;
signed short v150;
signed char v151;
v147 = -2 + v143;
v148 = 4 + v138;
v149 = 7 + 0;
v150 = v139 + -2;
v151 = v3 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 12: 
return v141;
default: abort ();
}
}
}
}
