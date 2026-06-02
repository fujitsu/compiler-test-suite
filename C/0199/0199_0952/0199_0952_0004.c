#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed int v5 (unsigned short, signed short);
signed int (*v6) (unsigned short, signed short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v12) (unsigned int, unsigned int, unsigned short, signed int);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned int, signed int);
extern signed char (*v16) (unsigned int, signed int, unsigned int, signed int);
extern unsigned char v17 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned short, unsigned int, unsigned char);
extern void v19 (unsigned int, signed short, unsigned int);
extern void (*v20) (unsigned int, signed short, unsigned int);
extern unsigned int v21 (unsigned short, signed short, signed char);
extern unsigned int (*v22) (unsigned short, signed short, signed char);
extern signed short v23 (unsigned short, signed short, signed short, unsigned char);
extern signed short (*v24) (unsigned short, signed short, signed short, unsigned char);
extern void v25 (signed int, unsigned short, unsigned int);
extern void (*v26) (signed int, unsigned short, unsigned int);
unsigned int v27 (signed short, unsigned short, unsigned short);
unsigned int (*v28) (signed short, unsigned short, unsigned short) = v27;
unsigned short v29 (signed char, signed short, signed char, unsigned short);
unsigned short (*v30) (signed char, signed short, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v139 = 3;
signed int v138 = -2;
signed char v137 = -2;

unsigned short v29 (signed char v140, signed short v141, signed char v142, unsigned short v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 5;
unsigned char v145 = 7;
unsigned char v144 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed char v147;
signed short v148;
signed char v149;
unsigned short v150;
unsigned short v151;
v147 = v140 - v142;
v148 = v141 + v141;
v149 = 1 - 1;
v150 = v143 + v146;
v151 = v29 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 3: 
{
unsigned short v152;
signed short v153;
unsigned int v154;
v152 = v146 + v143;
v153 = 2 + v141;
v154 = v9 (v152, v153);
history[history_index++] = (int)v154;
}
break;
case 13: 
return v146;
case 14: 
return 6;
default: abort ();
}
}
}
}

unsigned int v27 (signed short v155, unsigned short v156, unsigned short v157)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed short v160 = 2;
unsigned short v159 = 2;
unsigned int v158 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v161, signed short v162)
{
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
signed char v165 = -4;
signed char v164 = -3;
unsigned int v163 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
