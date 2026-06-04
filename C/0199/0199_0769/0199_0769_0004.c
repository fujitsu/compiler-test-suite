#include <stdlib.h>
unsigned char v1 (unsigned short, signed char, signed char);
unsigned char (*v2) (unsigned short, signed char, signed char) = v1;
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (signed int, signed int, unsigned short, signed int);
extern void (*v6) (signed int, signed int, unsigned short, signed int);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed short v11 (signed int, signed short, unsigned short);
signed short (*v12) (signed int, signed short, unsigned short) = v11;
extern signed char v13 (unsigned short, unsigned short, signed char, unsigned short);
extern signed char (*v14) (unsigned short, unsigned short, signed char, unsigned short);
unsigned char v15 (signed int);
unsigned char (*v16) (signed int) = v15;
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern signed int v21 (signed int, unsigned char, signed int);
extern signed int (*v22) (signed int, unsigned char, signed int);
extern unsigned short v25 (unsigned short, signed int, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed char, signed short, signed short);
extern unsigned short (*v28) (unsigned char, signed char, signed short, signed short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 2;
unsigned char v129 = 1;
signed short v128 = -2;

signed short v17 (void)
{
{
for (;;) {
signed int v133 = -1;
signed char v132 = -4;
signed short v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -3;
signed short v136 = 1;
signed char v135 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v138, signed short v139, unsigned short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 4U;
signed char v142 = 1;
signed char v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v144, signed char v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = -2;
unsigned short v148 = 0;
unsigned char v147 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v150;
signed int v151;
unsigned char v152;
signed int v153;
unsigned short v154;
v150 = v144 + v144;
v151 = 1 - 1;
v152 = 6 - 5;
v153 = -1 + -1;
v154 = v25 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 2: 
{
unsigned short v155;
unsigned short v156;
signed char v157;
unsigned short v158;
signed char v159;
v155 = v148 - v148;
v156 = v148 - v144;
v157 = -4 + v145;
v158 = 1 - v144;
v159 = v13 (v155, v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 4: 
{
signed char v160;
unsigned short v161;
v160 = v146 - v145;
v161 = v3 (v160);
history[history_index++] = (int)v161;
}
break;
case 14: 
return v147;
default: abort ();
}
}
}
}
