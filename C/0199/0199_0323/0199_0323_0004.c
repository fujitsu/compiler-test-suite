#include <stdlib.h>
extern unsigned short v3 (signed int, unsigned char, signed int, unsigned char);
extern unsigned short (*v4) (signed int, unsigned char, signed int, unsigned char);
extern signed short v5 (signed short, unsigned short, signed char);
extern signed short (*v6) (signed short, unsigned short, signed char);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern unsigned char v9 (unsigned char, unsigned int, signed char);
extern unsigned char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned int, unsigned int);
extern void v15 (unsigned short, signed short, signed short, unsigned char);
extern void (*v16) (unsigned short, signed short, signed short, unsigned char);
extern signed char v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed char (*v18) (unsigned int, unsigned int, unsigned char, signed short);
unsigned char v19 (unsigned int, signed char, unsigned short, signed char);
unsigned char (*v20) (unsigned int, signed char, unsigned short, signed char) = v19;
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned char v23 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short, unsigned short, unsigned short);
void v25 (signed short, signed short);
void (*v26) (signed short, signed short) = v25;
unsigned char v27 (unsigned int, signed short);
unsigned char (*v28) (unsigned int, signed short) = v27;
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 3;
signed char v124 = -2;
unsigned int v123 = 0U;

unsigned char v27 (unsigned int v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 4;
unsigned int v129 = 2U;
unsigned char v128 = 1;
trace++;
switch (trace)
{
case 4: 
return v128;
default: abort ();
}
}
}
}

void v25 (signed short v131, signed short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 4U;
signed char v134 = -1;
unsigned int v133 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
unsigned short v138 = 6;
signed char v137 = -3;
unsigned short v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v139, signed char v140, unsigned short v141, signed char v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 7;
unsigned short v144 = 6;
signed int v143 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v146;
unsigned short v147;
unsigned short v148;
unsigned short v149;
unsigned char v150;
v146 = v139 + 3U;
v147 = 4 + v141;
v148 = v145 + 1;
v149 = v144 + v145;
v150 = v23 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 6: 
{
unsigned int v151;
unsigned short v152;
unsigned short v153;
unsigned short v154;
unsigned char v155;
v151 = v139 - 5U;
v152 = v141 - v145;
v153 = v145 + v141;
v154 = 4 - v144;
v155 = v23 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 8: 
return 4;
case 10: 
return 5;
default: abort ();
}
}
}
}
