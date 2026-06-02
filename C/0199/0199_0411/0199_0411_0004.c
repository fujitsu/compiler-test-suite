#include <stdlib.h>
unsigned char v1 (unsigned char);
unsigned char (*v2) (unsigned char) = v1;
unsigned char v3 (unsigned short, signed int, unsigned short);
unsigned char (*v4) (unsigned short, signed int, unsigned short) = v3;
extern signed char v5 (signed short, signed short, signed char);
extern signed char (*v6) (signed short, signed short, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short v9 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed short, signed int);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed char, signed int, unsigned short, unsigned char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
unsigned char v29 (signed int, unsigned short);
unsigned char (*v30) (signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = -3;
unsigned char v129 = 3;
signed int v128 = -1;

unsigned char v29 (signed int v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 2;
unsigned short v134 = 6;
unsigned short v133 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v136, signed int v137, unsigned short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 3;
unsigned short v140 = 3;
unsigned short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = 0;
unsigned char v144 = 3;
signed int v143 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v146;
signed int v147;
v146 = 1U - 4U;
v147 = v25 (v146);
history[history_index++] = (int)v147;
}
break;
case 2: 
{
signed char v148;
signed int v149;
unsigned short v150;
unsigned char v151;
unsigned char v152;
v148 = 1 - -4;
v149 = v143 + -3;
v150 = 7 - 0;
v151 = 5 - v142;
v152 = v23 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 14: 
return v142;
default: abort ();
}
}
}
}
