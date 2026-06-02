#include <stdlib.h>
signed short v1 (signed char, signed short);
signed short (*v2) (signed char, signed short) = v1;
extern unsigned int v3 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned short, unsigned int, unsigned char);
extern void v5 (unsigned char, unsigned char, signed short);
extern void (*v6) (unsigned char, unsigned char, signed short);
extern unsigned short v7 (unsigned char, unsigned char, signed short);
extern unsigned short (*v8) (unsigned char, unsigned char, signed short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
signed int v11 (unsigned int, unsigned char);
signed int (*v12) (unsigned int, unsigned char) = v11;
extern unsigned int v13 (signed char, unsigned char, signed int, signed int);
extern unsigned int (*v14) (signed char, unsigned char, signed int, signed int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
unsigned char v17 (unsigned int, unsigned int, unsigned int);
unsigned char (*v18) (unsigned int, unsigned int, unsigned int) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
signed int v27 (signed short, signed int, signed short, signed int);
signed int (*v28) (signed short, signed int, signed short, signed int) = v27;
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v124 = 4;
signed char v123 = 2;
unsigned char v122 = 4;

signed int v27 (signed short v125, signed int v126, signed short v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 2;
unsigned short v130 = 4;
unsigned short v129 = 6;
trace++;
switch (trace)
{
case 2: 
return v126;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v132, unsigned int v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -2;
unsigned short v136 = 6;
unsigned char v135 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v138, unsigned char v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 7;
unsigned short v141 = 5;
signed int v140 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed int v143;
unsigned short v144;
v143 = -1 - 3;
v144 = v25 (v143);
history[history_index++] = (int)v144;
}
break;
case 7: 
{
signed int v145;
unsigned short v146;
v145 = 3 - -2;
v146 = v25 (v145);
history[history_index++] = (int)v146;
}
break;
case 9: 
return -4;
case 11: 
return v140;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed short v1 (signed char v147, signed short v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned int v151 = 4U;
signed char v150 = -1;
signed char v149 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v152;
signed char v153;
v152 = 2 - 1;
v153 = v15 (v152);
history[history_index++] = (int)v153;
}
break;
case 16: 
return -3;
default: abort ();
}
}
}
}
