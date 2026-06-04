#include <stdlib.h>
extern unsigned short v3 (unsigned char, signed char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, signed char, signed char, signed short);
extern void v5 (unsigned short, signed short, signed short, unsigned short);
extern void (*v6) (unsigned short, signed short, signed short, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern unsigned int v9 (unsigned short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned short, unsigned char, unsigned int);
signed short v11 (signed char, signed int, signed int);
signed short (*v12) (signed char, signed int, signed int) = v11;
extern signed short v13 (signed int, unsigned int, unsigned int);
extern signed short (*v14) (signed int, unsigned int, unsigned int);
extern signed short v15 (signed char, signed short, signed char, unsigned char);
extern signed short (*v16) (signed char, signed short, signed char, unsigned char);
extern unsigned char v17 (signed short, signed char, unsigned int);
extern unsigned char (*v18) (signed short, signed char, unsigned int);
unsigned char v19 (unsigned char);
unsigned char (*v20) (unsigned char) = v19;
extern signed int v21 (unsigned short, unsigned short, signed char, signed short);
extern signed int (*v22) (unsigned short, unsigned short, signed char, signed short);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short, unsigned int, signed char);
extern unsigned short (*v26) (signed short, unsigned int, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
void v29 (unsigned char, signed short, signed int, unsigned char);
void (*v30) (unsigned char, signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v133 = 3;
unsigned short v132 = 3;
signed short v131 = 1;

void v29 (unsigned char v134, signed short v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -2;
signed char v139 = 1;
unsigned char v138 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v141;
unsigned short v142;
signed char v143;
signed short v144;
signed int v145;
v141 = 2 - 6;
v142 = 1 - 0;
v143 = 1 + 0;
v144 = v135 - -2;
v145 = v21 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 9: 
{
unsigned short v146;
unsigned short v147;
signed char v148;
signed short v149;
signed int v150;
v146 = 1 - 6;
v147 = 5 + 6;
v148 = -3 + v139;
v149 = -4 + v140;
v150 = v21 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v151)
{
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = -4;
signed char v153 = -3;
signed short v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v155, signed int v156, signed int v157)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
unsigned int v160 = 5U;
unsigned short v159 = 4;
unsigned char v158 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
